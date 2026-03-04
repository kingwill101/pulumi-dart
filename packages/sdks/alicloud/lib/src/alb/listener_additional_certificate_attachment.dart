import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_additional_certificate_attachment_args.dart';
import 'listener_additional_certificate_attachment_state.dart';

/// Provides a Application Load Balancer (ALB) Listener Additional Certificate Attachment resource.
///
/// For information about Application Load Balancer (ALB) Listener Additional Certificate Attachment and how to use it, see [What is Listener Additional Certificate Attachment](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-associateadditionalcertificateswithlistener).
///
/// &gt; **NOTE:** Available since v1.161.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.alb.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///         vpcId: defaultNetwork.id,
///         cidrBlock: std.format({
///             input: "10.4.%d.0/24",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         zoneId: _default.then(_default => _default.zones[range.value].id),
///         vswitchName: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const defaultLoadBalancer = new alicloud.alb.LoadBalancer("default", {
///     vpcId: defaultNetwork.id,
///     addressType: "Internet",
///     addressAllocatedMode: "Fixed",
///     loadBalancerName: name,
///     loadBalancerEdition: "Standard",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     tags: {
///         Created: "TF",
///     },
///     zoneMappings: [
///         {
///             vswitchId: defaultSwitch[0].id,
///             zoneId: _default.then(_default => _default.zones?.[0]?.id),
///         },
///         {
///             vswitchId: defaultSwitch[1].id,
///             zoneId: _default.then(_default => _default.zones?.[1]?.id),
///         },
///     ],
/// });
/// const defaultServerGroup = new alicloud.alb.ServerGroup("default", {
///     protocol: "HTTP",
///     vpcId: defaultNetwork.id,
///     serverGroupName: name,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     healthCheckConfig: {
///         healthCheckEnabled: false,
///     },
///     stickySessionConfig: {
///         stickySessionEnabled: false,
///     },
///     tags: {
///         Created: "TF",
///     },
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultServiceCertificate: alicloud.cas.ServiceCertificate[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultServiceCertificate.push(new alicloud.cas.ServiceCertificate(`default-${range.value}`, {
///         certificateName: std.join({
///             separator: "-",
///             input: [
///                 name,
///                 defaultInteger.result,
///                 range.value,
///             ],
///         }).then(invoke => invoke.result),
///         cert: `-----BEGIN CERTIFICATE-----
/// MIIDeDCCAmCgAwIBAgIEN3ZT6zANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwJD
/// TjEVMBMGA1UEAwwMKi50ZnRlc3QudG9wMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYD
/// VQQHDAdCZWlKaW5nMQswCQYDVQQKDAJBQTAeFw0yMzA4MjgwNjQ5NDNaFw0yNTA4
/// MjcwNjQ5NDNaMFUxCzAJBgNVBAYTAkNOMRUwEwYDVQQDDAwqLnRmdGVzdC50b3Ax
/// EDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxCzAJBgNVBAoMAkFB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzkk9NJUH7PLSQK4RRrGQ
/// Y5dVsftkhnKh9HhI6yrnlowWIDPS1PZHOU/5gQ7xPUPGdKQV5S7x8wROnAaXEimx
/// N4GdQw25pGhRJvlwme9fzJJiSe6lG49NCxmuBiEdJAzPKaTPpK1cG1f1TqdgCfHR
/// HAL6Jxb3ylHG2LlTNFLXikubUi5RT6/9C8psr713Zm4HveCI/cx0WdgZ+fmsc9ft
/// rkIB1DdyV1kQ51m8r2rLi3J7aC5ggGOiex/VlGSd4e6SOQLpdQEdDbodtOJ4LgVk
/// +arFNCMinUWIOPGFzXhdm6lssPbh4MOBrz8c/M9TcF4hoMn5/o/9johZIZ/DOvXt
/// ZQIDAQABo1AwTjAdBgNVHQ4EFgQUOnWiddgeZj17IeysatqhE361o5YwHwYDVR0j
/// BBgwFoAUOnWiddgeZj17IeysatqhE361o5YwDAYDVR0TBAUwAwEB/zANBgkqhkiG
/// 9w0BAQsFAAOCAQEAfh3cnOszHM/5wXjY7BIkmgDOReksS+87ibhBz7T2ddZj+yCF
/// 9GdIBzXCiHpQFXpW8a3kc3I7l3nGfMTkmF6ld3ot/6SXP17QKJwxtvUA4ib8QkWD
/// S7FT+UcHCUHv42Sh1e5uAlQ5pMSul7iKcR7jwlwZGZ0905HOqrmdyUGJ+Ud2uZWD
/// AC0dJF6Bv9VhNtci8Imp05PaPH09deXLZu8LRrKRZFy9qLW5R6Swv7nzxckOAqDk
/// TTc40xwvQROekWUyxeJL7xaHuylUHE0bxsiIfx5bZsBizRjprIwGlj85CSPuTZyP
/// DPfaiZAN/61h5HNAnxLltOZfqabKYYw7l9LBDg==
/// -----END CERTIFICATE-----
/// `,
///         key: `-----BEGIN PRIVATE KEY-----
/// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDOST00lQfs8tJA
/// rhFGsZBjl1Wx+2SGcqH0eEjrKueWjBYgM9LU9kc5T/mBDvE9Q8Z0pBXlLvHzBE6c
/// BpcSKbE3gZ1DDbmkaFEm+XCZ71/MkmJJ7qUbj00LGa4GIR0kDM8ppM+krVwbV/VO
/// p2AJ8dEcAvonFvfKUcbYuVM0UteKS5tSLlFPr/0LymyvvXdmbge94Ij9zHRZ2Bn5
/// +axz1+2uQgHUN3JXWRDnWbyvasuLcntoLmCAY6J7H9WUZJ3h7pI5Aul1AR0Nuh20
/// 4nguBWT5qsU0IyKdRYg48YXNeF2bqWyw9uHgw4GvPxz8z1NwXiGgyfn+j/2OiFkh
/// n8M69e1lAgMBAAECggEAevPgTTT+0lYwx2h416ACJboP09O5KQGuUl5XaAPcoTjB
/// /1OkOFbKQPjQCAJ1+0QoR2F9w2plv6kziX/MD4FWJXVV3J+TpNCgfhBy8u1gNjiR
/// 6Osa8gBJtXIK7ZBTJCeWWoXnVYoWuh2FEupkLck6D+4eV6oy6x4u3QIo+6jc24n9
/// dIXQG6/v/Iao34kB0LUdp/4WNaUDvfI6NDhEwchpKE95dtWIDlIN/YhfiYAdjrnl
/// YmH2VDbAGgsdEiHP4wLZfjgsGPPDGS0+qBHoSiJGH0E6wWEZdAE4TsYGRFsO86n3
/// LfjEPFGfPlcnZe2cTTe3kmyKq/DTjxtu2rh3I8o2CQKBgQD/5Xe7cenaOBefzPlx
/// GOEsB+qv49UmzEPOXDNZe9hmAawuuuxPUM+xlE++P+mEgQm1LPT4WWgtFLPVuwmx
/// ncxt4CJNZh+ZGFyAZ4dm4M4ZhIBXNonyIP+yGyAJUUVF9Iy3TYcJNiGzv2Rx9JRQ
/// XWJMQnTDILmZbmU+ltTea7/zqwKBgQDOXqCqb17MuLt7OcKWSgthm79OlaOdzZvl
/// i9qU6VzZKG7Axc5gA9yq6tHp3vWPI4bNdvwqIIa/nzVILjGA5fcYFbRN+7gHwo8s
/// rNAgi5PAoKWqQRovyJRY9Eq/sn6l1jbJZAOUAMZMWDm8z89OqK7PNQSIAtfFSneo
/// 2QxJkGeTLwKBgGJkafBB8af9b1/7YWISLepPNPbihH/BhMThAMGEdAVs2TaymtA4
/// g1OFck/1pSVUtFXcbmjbf8ntruQcYbLQuNz6lFXsUXP9QPwCUrbE85ouL2bZSps2
/// AvsJoPzUKe2nBUAp6CUrkjPaAJYsc6ae8X/fAaRRfeu33ef9+OV4yrq3AoGAYFZo
/// ZmfrN2Kdkt7Z6dLTEVPlsMfGQ6pyNmxdM9rkzzNC0JcGymfDIb7RE35T3+hTy6La
/// AMiCXv3xn6qAzY2NFh87tpPlyymWMOLTnf3Kkcfszlfp45idOBGCu46V9NDVbppT
/// 2UmrSIR/H5dbTXsNcAlt/hhlpeInjhkU1VqmH10CgYEA7Kk+QhWq705SczpWjm5J
/// 9kHqfFzJLwAWNBduiia0WypgPhLe/4wT1rYQkBtKMVKrgFo7Cvi4YKlrtlDnXyeU
/// CIFqfEL5NriQelqrFsvgHsmD+MpvDoSWm5C8IrTubtlNyWUzXSVT4OIwzPobzPqG
/// LILJ+e7bLw8RrM0HfgFnl8c=
/// -----END PRIVATE KEY-----
/// `,
///     }));
/// }
/// const defaultListener = new alicloud.alb.Listener("default", {
///     loadBalancerId: defaultLoadBalancer.id,
///     listenerProtocol: "HTTPS",
///     listenerPort: 8081,
///     listenerDescription: name,
///     defaultActions: [{
///         type: "ForwardGroup",
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 serverGroupId: defaultServerGroup.id,
///             }],
///         },
///     }],
///     certificates: {
///         certificateId: std.joinOutput({
///             separator: "",
///             input: [
///                 defaultServiceCertificate[0].id,
///                 "-cn-hangzhou",
///             ],
///         }).apply(invoke => invoke.result),
///     },
/// });
/// const defaultListenerAdditionalCertificateAttachment = new alicloud.alb.ListenerAdditionalCertificateAttachment("default", {
///     certificateId: std.joinOutput({
///         separator: "",
///         input: [
///             defaultServiceCertificate[1].id,
///             "-cn-hangzhou",
///         ],
///     }).apply(invoke => invoke.result),
///     listenerId: defaultListener.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.alb.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///         vpc_id=default_network.id,
///         cidr_block=std.format(input="10.4.%d.0/24",
///             args=[range["value"] + 1]).result,
///         zone_id=default.zones[range["value"]].id,
///         vswitch_name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result))
/// default_load_balancer = alicloud.alb.LoadBalancer("default",
///     vpc_id=default_network.id,
///     address_type="Internet",
///     address_allocated_mode="Fixed",
///     load_balancer_name=name,
///     load_balancer_edition="Standard",
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     tags={
///         "Created": "TF",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": default_switch[0].id,
///             "zone_id": default.zones[0].id,
///         },
///         {
///             "vswitch_id": default_switch[1].id,
///             "zone_id": default.zones[1].id,
///         },
///     ])
/// default_server_group = alicloud.alb.ServerGroup("default",
///     protocol="HTTP",
///     vpc_id=default_network.id,
///     server_group_name=name,
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     health_check_config={
///         "health_check_enabled": False,
///     },
///     sticky_session_config={
///         "sticky_session_enabled": False,
///     },
///     tags={
///         "Created": "TF",
///     })
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_service_certificate = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_service_certificate.append(alicloud.cas.ServiceCertificate(f"default-{range['value']}",
///         certificate_name=std.join(separator="-",
///             input=[
///                 name,
///                 default_integer["result"],
///                 range["value"],
///             ]).result,
///         cert="""-----BEGIN CERTIFICATE-----
/// MIIDeDCCAmCgAwIBAgIEN3ZT6zANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwJD
/// TjEVMBMGA1UEAwwMKi50ZnRlc3QudG9wMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYD
/// VQQHDAdCZWlKaW5nMQswCQYDVQQKDAJBQTAeFw0yMzA4MjgwNjQ5NDNaFw0yNTA4
/// MjcwNjQ5NDNaMFUxCzAJBgNVBAYTAkNOMRUwEwYDVQQDDAwqLnRmdGVzdC50b3Ax
/// EDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxCzAJBgNVBAoMAkFB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzkk9NJUH7PLSQK4RRrGQ
/// Y5dVsftkhnKh9HhI6yrnlowWIDPS1PZHOU/5gQ7xPUPGdKQV5S7x8wROnAaXEimx
/// N4GdQw25pGhRJvlwme9fzJJiSe6lG49NCxmuBiEdJAzPKaTPpK1cG1f1TqdgCfHR
/// HAL6Jxb3ylHG2LlTNFLXikubUi5RT6/9C8psr713Zm4HveCI/cx0WdgZ+fmsc9ft
/// rkIB1DdyV1kQ51m8r2rLi3J7aC5ggGOiex/VlGSd4e6SOQLpdQEdDbodtOJ4LgVk
/// +arFNCMinUWIOPGFzXhdm6lssPbh4MOBrz8c/M9TcF4hoMn5/o/9johZIZ/DOvXt
/// ZQIDAQABo1AwTjAdBgNVHQ4EFgQUOnWiddgeZj17IeysatqhE361o5YwHwYDVR0j
/// BBgwFoAUOnWiddgeZj17IeysatqhE361o5YwDAYDVR0TBAUwAwEB/zANBgkqhkiG
/// 9w0BAQsFAAOCAQEAfh3cnOszHM/5wXjY7BIkmgDOReksS+87ibhBz7T2ddZj+yCF
/// 9GdIBzXCiHpQFXpW8a3kc3I7l3nGfMTkmF6ld3ot/6SXP17QKJwxtvUA4ib8QkWD
/// S7FT+UcHCUHv42Sh1e5uAlQ5pMSul7iKcR7jwlwZGZ0905HOqrmdyUGJ+Ud2uZWD
/// AC0dJF6Bv9VhNtci8Imp05PaPH09deXLZu8LRrKRZFy9qLW5R6Swv7nzxckOAqDk
/// TTc40xwvQROekWUyxeJL7xaHuylUHE0bxsiIfx5bZsBizRjprIwGlj85CSPuTZyP
/// DPfaiZAN/61h5HNAnxLltOZfqabKYYw7l9LBDg==
/// -----END CERTIFICATE-----
/// """,
///         key="""-----BEGIN PRIVATE KEY-----
/// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDOST00lQfs8tJA
/// rhFGsZBjl1Wx+2SGcqH0eEjrKueWjBYgM9LU9kc5T/mBDvE9Q8Z0pBXlLvHzBE6c
/// BpcSKbE3gZ1DDbmkaFEm+XCZ71/MkmJJ7qUbj00LGa4GIR0kDM8ppM+krVwbV/VO
/// p2AJ8dEcAvonFvfKUcbYuVM0UteKS5tSLlFPr/0LymyvvXdmbge94Ij9zHRZ2Bn5
/// +axz1+2uQgHUN3JXWRDnWbyvasuLcntoLmCAY6J7H9WUZJ3h7pI5Aul1AR0Nuh20
/// 4nguBWT5qsU0IyKdRYg48YXNeF2bqWyw9uHgw4GvPxz8z1NwXiGgyfn+j/2OiFkh
/// n8M69e1lAgMBAAECggEAevPgTTT+0lYwx2h416ACJboP09O5KQGuUl5XaAPcoTjB
/// /1OkOFbKQPjQCAJ1+0QoR2F9w2plv6kziX/MD4FWJXVV3J+TpNCgfhBy8u1gNjiR
/// 6Osa8gBJtXIK7ZBTJCeWWoXnVYoWuh2FEupkLck6D+4eV6oy6x4u3QIo+6jc24n9
/// dIXQG6/v/Iao34kB0LUdp/4WNaUDvfI6NDhEwchpKE95dtWIDlIN/YhfiYAdjrnl
/// YmH2VDbAGgsdEiHP4wLZfjgsGPPDGS0+qBHoSiJGH0E6wWEZdAE4TsYGRFsO86n3
/// LfjEPFGfPlcnZe2cTTe3kmyKq/DTjxtu2rh3I8o2CQKBgQD/5Xe7cenaOBefzPlx
/// GOEsB+qv49UmzEPOXDNZe9hmAawuuuxPUM+xlE++P+mEgQm1LPT4WWgtFLPVuwmx
/// ncxt4CJNZh+ZGFyAZ4dm4M4ZhIBXNonyIP+yGyAJUUVF9Iy3TYcJNiGzv2Rx9JRQ
/// XWJMQnTDILmZbmU+ltTea7/zqwKBgQDOXqCqb17MuLt7OcKWSgthm79OlaOdzZvl
/// i9qU6VzZKG7Axc5gA9yq6tHp3vWPI4bNdvwqIIa/nzVILjGA5fcYFbRN+7gHwo8s
/// rNAgi5PAoKWqQRovyJRY9Eq/sn6l1jbJZAOUAMZMWDm8z89OqK7PNQSIAtfFSneo
/// 2QxJkGeTLwKBgGJkafBB8af9b1/7YWISLepPNPbihH/BhMThAMGEdAVs2TaymtA4
/// g1OFck/1pSVUtFXcbmjbf8ntruQcYbLQuNz6lFXsUXP9QPwCUrbE85ouL2bZSps2
/// AvsJoPzUKe2nBUAp6CUrkjPaAJYsc6ae8X/fAaRRfeu33ef9+OV4yrq3AoGAYFZo
/// ZmfrN2Kdkt7Z6dLTEVPlsMfGQ6pyNmxdM9rkzzNC0JcGymfDIb7RE35T3+hTy6La
/// AMiCXv3xn6qAzY2NFh87tpPlyymWMOLTnf3Kkcfszlfp45idOBGCu46V9NDVbppT
/// 2UmrSIR/H5dbTXsNcAlt/hhlpeInjhkU1VqmH10CgYEA7Kk+QhWq705SczpWjm5J
/// 9kHqfFzJLwAWNBduiia0WypgPhLe/4wT1rYQkBtKMVKrgFo7Cvi4YKlrtlDnXyeU
/// CIFqfEL5NriQelqrFsvgHsmD+MpvDoSWm5C8IrTubtlNyWUzXSVT4OIwzPobzPqG
/// LILJ+e7bLw8RrM0HfgFnl8c=
/// -----END PRIVATE KEY-----
/// """))
/// default_listener = alicloud.alb.Listener("default",
///     load_balancer_id=default_load_balancer.id,
///     listener_protocol="HTTPS",
///     listener_port=8081,
///     listener_description=name,
///     default_actions=[{
///         "type": "ForwardGroup",
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "server_group_id": default_server_group.id,
///             }],
///         },
///     }],
///     certificates={
///         "certificate_id": std.join_output(separator="",
///             input=[
///                 default_service_certificate[0].id,
///                 "-cn-hangzhou",
///             ]).apply(lambda invoke: invoke.result),
///     })
/// default_listener_additional_certificate_attachment = alicloud.alb.ListenerAdditionalCertificateAttachment("default",
///     certificate_id=std.join_output(separator="",
///         input=[
///             default_service_certificate[1].id,
///             "-cn-hangzhou",
///         ]).apply(lambda invoke: invoke.result),
///     listener_id=default_listener.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Alb.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = defaultNetwork.Id,
///             CidrBlock = Std.Format.Invoke(new()
///             {
///                 Input = "10.4.%d.0/24",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[range.Value].Id),
///             VswitchName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var defaultLoadBalancer = new AliCloud.Alb.LoadBalancer("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         AddressType = "Internet",
///         AddressAllocatedMode = "Fixed",
///         LoadBalancerName = name,
///         LoadBalancerEdition = "Standard",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[0].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[1].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///             },
///         },
///     });
///
///     var defaultServerGroup = new AliCloud.Alb.ServerGroup("default", new()
///     {
///         Protocol = "HTTP",
///         VpcId = defaultNetwork.Id,
///         ServerGroupName = name,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckEnabled = false,
///         },
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = false,
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultServiceCertificate = new List<AliCloud.Cas.ServiceCertificate>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultServiceCertificate.Add(new AliCloud.Cas.ServiceCertificate($"default-{range.Value}", new()
///         {
///             CertificateName = Std.Join.Invoke(new()
///             {
///                 Separator = "-",
///                 Input = new[]
///                 {
///                     name,
///                     defaultInteger.Result,
///                     range.Value,
///                 },
///             }).Apply(invoke => invoke.Result),
///             Cert = @"-----BEGIN CERTIFICATE-----
/// MIIDeDCCAmCgAwIBAgIEN3ZT6zANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwJD
/// TjEVMBMGA1UEAwwMKi50ZnRlc3QudG9wMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYD
/// VQQHDAdCZWlKaW5nMQswCQYDVQQKDAJBQTAeFw0yMzA4MjgwNjQ5NDNaFw0yNTA4
/// MjcwNjQ5NDNaMFUxCzAJBgNVBAYTAkNOMRUwEwYDVQQDDAwqLnRmdGVzdC50b3Ax
/// EDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxCzAJBgNVBAoMAkFB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzkk9NJUH7PLSQK4RRrGQ
/// Y5dVsftkhnKh9HhI6yrnlowWIDPS1PZHOU/5gQ7xPUPGdKQV5S7x8wROnAaXEimx
/// N4GdQw25pGhRJvlwme9fzJJiSe6lG49NCxmuBiEdJAzPKaTPpK1cG1f1TqdgCfHR
/// HAL6Jxb3ylHG2LlTNFLXikubUi5RT6/9C8psr713Zm4HveCI/cx0WdgZ+fmsc9ft
/// rkIB1DdyV1kQ51m8r2rLi3J7aC5ggGOiex/VlGSd4e6SOQLpdQEdDbodtOJ4LgVk
/// +arFNCMinUWIOPGFzXhdm6lssPbh4MOBrz8c/M9TcF4hoMn5/o/9johZIZ/DOvXt
/// ZQIDAQABo1AwTjAdBgNVHQ4EFgQUOnWiddgeZj17IeysatqhE361o5YwHwYDVR0j
/// BBgwFoAUOnWiddgeZj17IeysatqhE361o5YwDAYDVR0TBAUwAwEB/zANBgkqhkiG
/// 9w0BAQsFAAOCAQEAfh3cnOszHM/5wXjY7BIkmgDOReksS+87ibhBz7T2ddZj+yCF
/// 9GdIBzXCiHpQFXpW8a3kc3I7l3nGfMTkmF6ld3ot/6SXP17QKJwxtvUA4ib8QkWD
/// S7FT+UcHCUHv42Sh1e5uAlQ5pMSul7iKcR7jwlwZGZ0905HOqrmdyUGJ+Ud2uZWD
/// AC0dJF6Bv9VhNtci8Imp05PaPH09deXLZu8LRrKRZFy9qLW5R6Swv7nzxckOAqDk
/// TTc40xwvQROekWUyxeJL7xaHuylUHE0bxsiIfx5bZsBizRjprIwGlj85CSPuTZyP
/// DPfaiZAN/61h5HNAnxLltOZfqabKYYw7l9LBDg==
/// -----END CERTIFICATE-----
/// ",
///             Key = @"-----BEGIN PRIVATE KEY-----
/// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDOST00lQfs8tJA
/// rhFGsZBjl1Wx+2SGcqH0eEjrKueWjBYgM9LU9kc5T/mBDvE9Q8Z0pBXlLvHzBE6c
/// BpcSKbE3gZ1DDbmkaFEm+XCZ71/MkmJJ7qUbj00LGa4GIR0kDM8ppM+krVwbV/VO
/// p2AJ8dEcAvonFvfKUcbYuVM0UteKS5tSLlFPr/0LymyvvXdmbge94Ij9zHRZ2Bn5
/// +axz1+2uQgHUN3JXWRDnWbyvasuLcntoLmCAY6J7H9WUZJ3h7pI5Aul1AR0Nuh20
/// 4nguBWT5qsU0IyKdRYg48YXNeF2bqWyw9uHgw4GvPxz8z1NwXiGgyfn+j/2OiFkh
/// n8M69e1lAgMBAAECggEAevPgTTT+0lYwx2h416ACJboP09O5KQGuUl5XaAPcoTjB
/// /1OkOFbKQPjQCAJ1+0QoR2F9w2plv6kziX/MD4FWJXVV3J+TpNCgfhBy8u1gNjiR
/// 6Osa8gBJtXIK7ZBTJCeWWoXnVYoWuh2FEupkLck6D+4eV6oy6x4u3QIo+6jc24n9
/// dIXQG6/v/Iao34kB0LUdp/4WNaUDvfI6NDhEwchpKE95dtWIDlIN/YhfiYAdjrnl
/// YmH2VDbAGgsdEiHP4wLZfjgsGPPDGS0+qBHoSiJGH0E6wWEZdAE4TsYGRFsO86n3
/// LfjEPFGfPlcnZe2cTTe3kmyKq/DTjxtu2rh3I8o2CQKBgQD/5Xe7cenaOBefzPlx
/// GOEsB+qv49UmzEPOXDNZe9hmAawuuuxPUM+xlE++P+mEgQm1LPT4WWgtFLPVuwmx
/// ncxt4CJNZh+ZGFyAZ4dm4M4ZhIBXNonyIP+yGyAJUUVF9Iy3TYcJNiGzv2Rx9JRQ
/// XWJMQnTDILmZbmU+ltTea7/zqwKBgQDOXqCqb17MuLt7OcKWSgthm79OlaOdzZvl
/// i9qU6VzZKG7Axc5gA9yq6tHp3vWPI4bNdvwqIIa/nzVILjGA5fcYFbRN+7gHwo8s
/// rNAgi5PAoKWqQRovyJRY9Eq/sn6l1jbJZAOUAMZMWDm8z89OqK7PNQSIAtfFSneo
/// 2QxJkGeTLwKBgGJkafBB8af9b1/7YWISLepPNPbihH/BhMThAMGEdAVs2TaymtA4
/// g1OFck/1pSVUtFXcbmjbf8ntruQcYbLQuNz6lFXsUXP9QPwCUrbE85ouL2bZSps2
/// AvsJoPzUKe2nBUAp6CUrkjPaAJYsc6ae8X/fAaRRfeu33ef9+OV4yrq3AoGAYFZo
/// ZmfrN2Kdkt7Z6dLTEVPlsMfGQ6pyNmxdM9rkzzNC0JcGymfDIb7RE35T3+hTy6La
/// AMiCXv3xn6qAzY2NFh87tpPlyymWMOLTnf3Kkcfszlfp45idOBGCu46V9NDVbppT
/// 2UmrSIR/H5dbTXsNcAlt/hhlpeInjhkU1VqmH10CgYEA7Kk+QhWq705SczpWjm5J
/// 9kHqfFzJLwAWNBduiia0WypgPhLe/4wT1rYQkBtKMVKrgFo7Cvi4YKlrtlDnXyeU
/// CIFqfEL5NriQelqrFsvgHsmD+MpvDoSWm5C8IrTubtlNyWUzXSVT4OIwzPobzPqG
/// LILJ+e7bLw8RrM0HfgFnl8c=
/// -----END PRIVATE KEY-----
/// ",
///         }));
///     }
///     var defaultListener = new AliCloud.Alb.Listener("default", new()
///     {
///         LoadBalancerId = defaultLoadBalancer.Id,
///         ListenerProtocol = "HTTPS",
///         ListenerPort = 8081,
///         ListenerDescription = name,
///         DefaultActions = new[]
///         {
///             new AliCloud.Alb.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "ForwardGroup",
///                 ForwardGroupConfig = new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             ServerGroupId = defaultServerGroup.Id,
///                         },
///                     },
///                 },
///             },
///         },
///         Certificates = new AliCloud.Alb.Inputs.ListenerCertificatesArgs
///         {
///             CertificateId = Std.Join.Invoke(new()
///             {
///                 Separator = "",
///                 Input = new[]
///                 {
///                     defaultServiceCertificate[0].Id,
///                     "-cn-hangzhou",
///                 },
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
///     var defaultListenerAdditionalCertificateAttachment = new AliCloud.Alb.ListenerAdditionalCertificateAttachment("default", new()
///     {
///         CertificateId = Std.Join.Invoke(new()
///         {
///             Separator = "",
///             Input = new[]
///             {
///                 defaultServiceCertificate[1].Id,
///                 "-cn-hangzhou",
///             },
///         }).Apply(invoke => invoke.Result),
///         ListenerId = defaultListener.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "10.4.%d.0/24",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultSwitch []*vpc.Switch
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("default-%v", key0), &vpc.SwitchArgs{
/// 				VpcId:       defaultNetwork.ID(),
/// 				CidrBlock:   pulumi.String(invokeFormat.Result),
/// 				ZoneId:      _default.Zones[val0].Id,
/// 				VswitchName: pulumi.String(invokeFormat1.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSwitch = append(defaultSwitch, __res)
/// 		}
/// 		defaultLoadBalancer, err := alb.NewLoadBalancer(ctx, "default", &alb.LoadBalancerArgs{
/// 			VpcId:                defaultNetwork.ID(),
/// 			AddressType:          pulumi.String("Internet"),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			LoadBalancerName:     pulumi.String(name),
/// 			LoadBalancerEdition:  pulumi.String("Standard"),
/// 			ResourceGroupId:      pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[0].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[1].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[1].Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := alb.NewServerGroup(ctx, "default", &alb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("HTTP"),
/// 			VpcId:           defaultNetwork.ID(),
/// 			ServerGroupName: pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckEnabled: pulumi.Bool(false),
/// 			},
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(false),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin2, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: "-",
/// 			Input: []interface{}{
/// 				name,
/// 				defaultInteger.Result,
/// 				val0,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultServiceCertificate []*cas.ServiceCertificate
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := cas.NewServiceCertificate(ctx, fmt.Sprintf("default-%v", key0), &cas.ServiceCertificateArgs{
/// 				CertificateName: pulumi.String(invokeJoin2.Result),
/// 				Cert: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDeDCCAmCgAwIBAgIEN3ZT6zANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwJD
/// TjEVMBMGA1UEAwwMKi50ZnRlc3QudG9wMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYD
/// VQQHDAdCZWlKaW5nMQswCQYDVQQKDAJBQTAeFw0yMzA4MjgwNjQ5NDNaFw0yNTA4
/// MjcwNjQ5NDNaMFUxCzAJBgNVBAYTAkNOMRUwEwYDVQQDDAwqLnRmdGVzdC50b3Ax
/// EDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxCzAJBgNVBAoMAkFB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzkk9NJUH7PLSQK4RRrGQ
/// Y5dVsftkhnKh9HhI6yrnlowWIDPS1PZHOU/5gQ7xPUPGdKQV5S7x8wROnAaXEimx
/// N4GdQw25pGhRJvlwme9fzJJiSe6lG49NCxmuBiEdJAzPKaTPpK1cG1f1TqdgCfHR
/// HAL6Jxb3ylHG2LlTNFLXikubUi5RT6/9C8psr713Zm4HveCI/cx0WdgZ+fmsc9ft
/// rkIB1DdyV1kQ51m8r2rLi3J7aC5ggGOiex/VlGSd4e6SOQLpdQEdDbodtOJ4LgVk
/// +arFNCMinUWIOPGFzXhdm6lssPbh4MOBrz8c/M9TcF4hoMn5/o/9johZIZ/DOvXt
/// ZQIDAQABo1AwTjAdBgNVHQ4EFgQUOnWiddgeZj17IeysatqhE361o5YwHwYDVR0j
/// BBgwFoAUOnWiddgeZj17IeysatqhE361o5YwDAYDVR0TBAUwAwEB/zANBgkqhkiG
/// 9w0BAQsFAAOCAQEAfh3cnOszHM/5wXjY7BIkmgDOReksS+87ibhBz7T2ddZj+yCF
/// 9GdIBzXCiHpQFXpW8a3kc3I7l3nGfMTkmF6ld3ot/6SXP17QKJwxtvUA4ib8QkWD
/// S7FT+UcHCUHv42Sh1e5uAlQ5pMSul7iKcR7jwlwZGZ0905HOqrmdyUGJ+Ud2uZWD
/// AC0dJF6Bv9VhNtci8Imp05PaPH09deXLZu8LRrKRZFy9qLW5R6Swv7nzxckOAqDk
/// TTc40xwvQROekWUyxeJL7xaHuylUHE0bxsiIfx5bZsBizRjprIwGlj85CSPuTZyP
/// DPfaiZAN/61h5HNAnxLltOZfqabKYYw7l9LBDg==
/// -----END CERTIFICATE-----
/// `),
/// 				Key: pulumi.String(`-----BEGIN PRIVATE KEY-----
/// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDOST00lQfs8tJA
/// rhFGsZBjl1Wx+2SGcqH0eEjrKueWjBYgM9LU9kc5T/mBDvE9Q8Z0pBXlLvHzBE6c
/// BpcSKbE3gZ1DDbmkaFEm+XCZ71/MkmJJ7qUbj00LGa4GIR0kDM8ppM+krVwbV/VO
/// p2AJ8dEcAvonFvfKUcbYuVM0UteKS5tSLlFPr/0LymyvvXdmbge94Ij9zHRZ2Bn5
/// +axz1+2uQgHUN3JXWRDnWbyvasuLcntoLmCAY6J7H9WUZJ3h7pI5Aul1AR0Nuh20
/// 4nguBWT5qsU0IyKdRYg48YXNeF2bqWyw9uHgw4GvPxz8z1NwXiGgyfn+j/2OiFkh
/// n8M69e1lAgMBAAECggEAevPgTTT+0lYwx2h416ACJboP09O5KQGuUl5XaAPcoTjB
/// /1OkOFbKQPjQCAJ1+0QoR2F9w2plv6kziX/MD4FWJXVV3J+TpNCgfhBy8u1gNjiR
/// 6Osa8gBJtXIK7ZBTJCeWWoXnVYoWuh2FEupkLck6D+4eV6oy6x4u3QIo+6jc24n9
/// dIXQG6/v/Iao34kB0LUdp/4WNaUDvfI6NDhEwchpKE95dtWIDlIN/YhfiYAdjrnl
/// YmH2VDbAGgsdEiHP4wLZfjgsGPPDGS0+qBHoSiJGH0E6wWEZdAE4TsYGRFsO86n3
/// LfjEPFGfPlcnZe2cTTe3kmyKq/DTjxtu2rh3I8o2CQKBgQD/5Xe7cenaOBefzPlx
/// GOEsB+qv49UmzEPOXDNZe9hmAawuuuxPUM+xlE++P+mEgQm1LPT4WWgtFLPVuwmx
/// ncxt4CJNZh+ZGFyAZ4dm4M4ZhIBXNonyIP+yGyAJUUVF9Iy3TYcJNiGzv2Rx9JRQ
/// XWJMQnTDILmZbmU+ltTea7/zqwKBgQDOXqCqb17MuLt7OcKWSgthm79OlaOdzZvl
/// i9qU6VzZKG7Axc5gA9yq6tHp3vWPI4bNdvwqIIa/nzVILjGA5fcYFbRN+7gHwo8s
/// rNAgi5PAoKWqQRovyJRY9Eq/sn6l1jbJZAOUAMZMWDm8z89OqK7PNQSIAtfFSneo
/// 2QxJkGeTLwKBgGJkafBB8af9b1/7YWISLepPNPbihH/BhMThAMGEdAVs2TaymtA4
/// g1OFck/1pSVUtFXcbmjbf8ntruQcYbLQuNz6lFXsUXP9QPwCUrbE85ouL2bZSps2
/// AvsJoPzUKe2nBUAp6CUrkjPaAJYsc6ae8X/fAaRRfeu33ef9+OV4yrq3AoGAYFZo
/// ZmfrN2Kdkt7Z6dLTEVPlsMfGQ6pyNmxdM9rkzzNC0JcGymfDIb7RE35T3+hTy6La
/// AMiCXv3xn6qAzY2NFh87tpPlyymWMOLTnf3Kkcfszlfp45idOBGCu46V9NDVbppT
/// 2UmrSIR/H5dbTXsNcAlt/hhlpeInjhkU1VqmH10CgYEA7Kk+QhWq705SczpWjm5J
/// 9kHqfFzJLwAWNBduiia0WypgPhLe/4wT1rYQkBtKMVKrgFo7Cvi4YKlrtlDnXyeU
/// CIFqfEL5NriQelqrFsvgHsmD+MpvDoSWm5C8IrTubtlNyWUzXSVT4OIwzPobzPqG
/// LILJ+e7bLw8RrM0HfgFnl8c=
/// -----END PRIVATE KEY-----
/// `),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultServiceCertificate = append(defaultServiceCertificate, __res)
/// 		}
/// 		defaultListener, err := alb.NewListener(ctx, "default", &alb.ListenerArgs{
/// 			LoadBalancerId:      defaultLoadBalancer.ID(),
/// 			ListenerProtocol:    pulumi.String("HTTPS"),
/// 			ListenerPort:        pulumi.Int(8081),
/// 			ListenerDescription: pulumi.String(name),
/// 			DefaultActions: alb.ListenerDefaultActionArray{
/// 				&alb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("ForwardGroup"),
/// 					ForwardGroupConfig: &alb.ListenerDefaultActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArray{
/// 							&alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs{
/// 								ServerGroupId: defaultServerGroup.ID(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Certificates: &alb.ListenerCertificatesArgs{
/// 				CertificateId: std.JoinOutput(ctx, std.JoinOutputArgs{
/// 					Separator: pulumi.String(""),
/// 					Input: pulumi.StringArray{
/// 						defaultServiceCertificate[0].ID(),
/// 						pulumi.String("-cn-hangzhou"),
/// 					},
/// 				}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 					return invoke.Result, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewListenerAdditionalCertificateAttachment(ctx, "default", &alb.ListenerAdditionalCertificateAttachmentArgs{
/// 			CertificateId: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String(""),
/// 				Input: pulumi.StringArray{
/// 					defaultServiceCertificate[1].ID(),
/// 					pulumi.String("-cn-hangzhou"),
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ListenerId: defaultListener.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cas.ServiceCertificate;
/// import com.pulumi.alicloud.cas.ServiceCertificateArgs;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.alicloud.alb.Listener;
/// import com.pulumi.alicloud.alb.ListenerArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionForwardGroupConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerCertificatesArgs;
/// import com.pulumi.alicloud.alb.ListenerAdditionalCertificateAttachment;
/// import com.pulumi.alicloud.alb.ListenerAdditionalCertificateAttachmentArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(defaultNetwork.id())
///                 .cidrBlock(StdFunctions.format(FormatArgs.builder()
///                     .input("10.4.%d.0/24")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .zoneId(default_.zones()[range.value()].id())
///                 .vswitchName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .addressType("Internet")
///             .addressAllocatedMode("Fixed")
///             .loadBalancerName(name)
///             .loadBalancerEdition("Standard")
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[0].id())
///                     .zoneId(default_.zones()[0].id())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[1].id())
///                     .zoneId(default_.zones()[1].id())
///                     .build())
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .protocol("HTTP")
///             .vpcId(defaultNetwork.id())
///             .serverGroupName(name)
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckEnabled(false)
///                 .build())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(false)
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new ServiceCertificate("defaultServiceCertificate-" + i, ServiceCertificateArgs.builder()
///                 .certificateName(StdFunctions.join(JoinArgs.builder()
///                     .separator("-")
///                     .input(
///                         name,
///                         defaultInteger.result(),
///                         range.value())
///                     .build()).result())
///                 .cert("""
/// -----BEGIN CERTIFICATE-----
/// MIIDeDCCAmCgAwIBAgIEN3ZT6zANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwJD
/// TjEVMBMGA1UEAwwMKi50ZnRlc3QudG9wMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYD
/// VQQHDAdCZWlKaW5nMQswCQYDVQQKDAJBQTAeFw0yMzA4MjgwNjQ5NDNaFw0yNTA4
/// MjcwNjQ5NDNaMFUxCzAJBgNVBAYTAkNOMRUwEwYDVQQDDAwqLnRmdGVzdC50b3Ax
/// EDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxCzAJBgNVBAoMAkFB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzkk9NJUH7PLSQK4RRrGQ
/// Y5dVsftkhnKh9HhI6yrnlowWIDPS1PZHOU/5gQ7xPUPGdKQV5S7x8wROnAaXEimx
/// N4GdQw25pGhRJvlwme9fzJJiSe6lG49NCxmuBiEdJAzPKaTPpK1cG1f1TqdgCfHR
/// HAL6Jxb3ylHG2LlTNFLXikubUi5RT6/9C8psr713Zm4HveCI/cx0WdgZ+fmsc9ft
/// rkIB1DdyV1kQ51m8r2rLi3J7aC5ggGOiex/VlGSd4e6SOQLpdQEdDbodtOJ4LgVk
/// +arFNCMinUWIOPGFzXhdm6lssPbh4MOBrz8c/M9TcF4hoMn5/o/9johZIZ/DOvXt
/// ZQIDAQABo1AwTjAdBgNVHQ4EFgQUOnWiddgeZj17IeysatqhE361o5YwHwYDVR0j
/// BBgwFoAUOnWiddgeZj17IeysatqhE361o5YwDAYDVR0TBAUwAwEB/zANBgkqhkiG
/// 9w0BAQsFAAOCAQEAfh3cnOszHM/5wXjY7BIkmgDOReksS+87ibhBz7T2ddZj+yCF
/// 9GdIBzXCiHpQFXpW8a3kc3I7l3nGfMTkmF6ld3ot/6SXP17QKJwxtvUA4ib8QkWD
/// S7FT+UcHCUHv42Sh1e5uAlQ5pMSul7iKcR7jwlwZGZ0905HOqrmdyUGJ+Ud2uZWD
/// AC0dJF6Bv9VhNtci8Imp05PaPH09deXLZu8LRrKRZFy9qLW5R6Swv7nzxckOAqDk
/// TTc40xwvQROekWUyxeJL7xaHuylUHE0bxsiIfx5bZsBizRjprIwGlj85CSPuTZyP
/// DPfaiZAN/61h5HNAnxLltOZfqabKYYw7l9LBDg==
/// -----END CERTIFICATE-----
///                 """)
///                 .key("""
/// -----BEGIN PRIVATE KEY-----
/// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDOST00lQfs8tJA
/// rhFGsZBjl1Wx+2SGcqH0eEjrKueWjBYgM9LU9kc5T/mBDvE9Q8Z0pBXlLvHzBE6c
/// BpcSKbE3gZ1DDbmkaFEm+XCZ71/MkmJJ7qUbj00LGa4GIR0kDM8ppM+krVwbV/VO
/// p2AJ8dEcAvonFvfKUcbYuVM0UteKS5tSLlFPr/0LymyvvXdmbge94Ij9zHRZ2Bn5
/// +axz1+2uQgHUN3JXWRDnWbyvasuLcntoLmCAY6J7H9WUZJ3h7pI5Aul1AR0Nuh20
/// 4nguBWT5qsU0IyKdRYg48YXNeF2bqWyw9uHgw4GvPxz8z1NwXiGgyfn+j/2OiFkh
/// n8M69e1lAgMBAAECggEAevPgTTT+0lYwx2h416ACJboP09O5KQGuUl5XaAPcoTjB
/// /1OkOFbKQPjQCAJ1+0QoR2F9w2plv6kziX/MD4FWJXVV3J+TpNCgfhBy8u1gNjiR
/// 6Osa8gBJtXIK7ZBTJCeWWoXnVYoWuh2FEupkLck6D+4eV6oy6x4u3QIo+6jc24n9
/// dIXQG6/v/Iao34kB0LUdp/4WNaUDvfI6NDhEwchpKE95dtWIDlIN/YhfiYAdjrnl
/// YmH2VDbAGgsdEiHP4wLZfjgsGPPDGS0+qBHoSiJGH0E6wWEZdAE4TsYGRFsO86n3
/// LfjEPFGfPlcnZe2cTTe3kmyKq/DTjxtu2rh3I8o2CQKBgQD/5Xe7cenaOBefzPlx
/// GOEsB+qv49UmzEPOXDNZe9hmAawuuuxPUM+xlE++P+mEgQm1LPT4WWgtFLPVuwmx
/// ncxt4CJNZh+ZGFyAZ4dm4M4ZhIBXNonyIP+yGyAJUUVF9Iy3TYcJNiGzv2Rx9JRQ
/// XWJMQnTDILmZbmU+ltTea7/zqwKBgQDOXqCqb17MuLt7OcKWSgthm79OlaOdzZvl
/// i9qU6VzZKG7Axc5gA9yq6tHp3vWPI4bNdvwqIIa/nzVILjGA5fcYFbRN+7gHwo8s
/// rNAgi5PAoKWqQRovyJRY9Eq/sn6l1jbJZAOUAMZMWDm8z89OqK7PNQSIAtfFSneo
/// 2QxJkGeTLwKBgGJkafBB8af9b1/7YWISLepPNPbihH/BhMThAMGEdAVs2TaymtA4
/// g1OFck/1pSVUtFXcbmjbf8ntruQcYbLQuNz6lFXsUXP9QPwCUrbE85ouL2bZSps2
/// AvsJoPzUKe2nBUAp6CUrkjPaAJYsc6ae8X/fAaRRfeu33ef9+OV4yrq3AoGAYFZo
/// ZmfrN2Kdkt7Z6dLTEVPlsMfGQ6pyNmxdM9rkzzNC0JcGymfDIb7RE35T3+hTy6La
/// AMiCXv3xn6qAzY2NFh87tpPlyymWMOLTnf3Kkcfszlfp45idOBGCu46V9NDVbppT
/// 2UmrSIR/H5dbTXsNcAlt/hhlpeInjhkU1VqmH10CgYEA7Kk+QhWq705SczpWjm5J
/// 9kHqfFzJLwAWNBduiia0WypgPhLe/4wT1rYQkBtKMVKrgFo7Cvi4YKlrtlDnXyeU
/// CIFqfEL5NriQelqrFsvgHsmD+MpvDoSWm5C8IrTubtlNyWUzXSVT4OIwzPobzPqG
/// LILJ+e7bLw8RrM0HfgFnl8c=
/// -----END PRIVATE KEY-----
///                 """)
///                 .build());
///
///
/// }
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .loadBalancerId(defaultLoadBalancer.id())
///             .listenerProtocol("HTTPS")
///             .listenerPort(8081)
///             .listenerDescription(name)
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("ForwardGroup")
///                 .forwardGroupConfig(ListenerDefaultActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .serverGroupId(defaultServerGroup.id())
///                         .build())
///                     .build())
///                 .build())
///             .certificates(ListenerCertificatesArgs.builder()
///                 .certificateId(StdFunctions.join(JoinArgs.builder()
///                     .separator("")
///                     .input(
///                         defaultServiceCertificate[0].id(),
///                         "-cn-hangzhou")
///                     .build()).applyValue(_invoke -> _invoke.result()))
///                 .build())
///             .build());
///
///         var defaultListenerAdditionalCertificateAttachment = new ListenerAdditionalCertificateAttachment("defaultListenerAdditionalCertificateAttachment", ListenerAdditionalCertificateAttachmentArgs.builder()
///             .certificateId(StdFunctions.join(JoinArgs.builder()
///                 .separator("")
///                 .input(
///                     defaultServiceCertificate[1].id(),
///                     "-cn-hangzhou")
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .listenerId(defaultListener.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Load Balancer (ALB) Listener Additional Certificate Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/listenerAdditionalCertificateAttachment:ListenerAdditionalCertificateAttachment example <listener_id>:<certificate_id>
/// ```
class ListenerAdditionalCertificateAttachment extends pulumi.CustomResource {
  /// The Certificate ID.
  late final pulumi.Output<String> certificateId;

  /// The type of the certificate.
  late final pulumi.Output<String> certificateType;

  /// The ID of the ALB listener.
  late final pulumi.Output<String> listenerId;

  /// The status of the certificate.
  late final pulumi.Output<String> status;

  /// Creates a new [ListenerAdditionalCertificateAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerAdditionalCertificateAttachment]. {@macro pulumi_alb_listener_additional_certificate_attachment_listener_additional_certificate_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerAdditionalCertificateAttachment(
    String name, {
    ListenerAdditionalCertificateAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/listenerAdditionalCertificateAttachment:ListenerAdditionalCertificateAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateId = registerOutput<String>('certificateId');
    certificateType = registerOutput<String>('certificateType');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ListenerAdditionalCertificateAttachment] resource's state with the given [name] and [id].
  static ListenerAdditionalCertificateAttachment get(
    String name,
    pulumi.Input<String> id, {
    ListenerAdditionalCertificateAttachmentState? state,
  }) {
    return ListenerAdditionalCertificateAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ListenerAdditionalCertificateAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/listenerAdditionalCertificateAttachment:ListenerAdditionalCertificateAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateId = registerOutput<String>('certificateId');
    certificateType = registerOutput<String>('certificateType');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
  }
}
