import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_additional_certificate_attachment_args.dart';
import 'listener_additional_certificate_attachment_state.dart';

/// Provides a NLB Listener Additional Certificate Attachment resource.
///
/// For information about NLB Listener Additional Certificate Attachment and how to use it, see [What is Listener Additional Certificate Attachment](https://www.alibabacloud.com/help/en/server-load-balancer/latest/nlb-instances-change).
///
/// &gt; **NOTE:** Available since v1.209.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.nlb.getZones({});
/// const createVpc = new alicloud.vpc.Network("create_vpc", {cidrBlock: "172.16.0.0/12"});
/// const createVswJ = new alicloud.vpc.Switch("create_vsw_j", {
///     vpcId: createVpc.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "172.16.1.0/24",
/// });
/// const createVswK = new alicloud.vpc.Switch("create_vsw_k", {
///     vpcId: createVpc.id,
///     zoneId: _default.then(_default => _default.zones?.[1]?.id),
///     cidrBlock: "172.16.2.0/24",
/// });
/// const lb = new alicloud.nlb.LoadBalancer("lb", {
///     addressIpVersion: "Ipv4",
///     zoneMappings: [
///         {
///             vswitchId: createVswJ.id,
///             zoneId: createVswJ.zoneId,
///         },
///         {
///             vswitchId: createVswK.id,
///             zoneId: createVswK.zoneId,
///         },
///     ],
///     loadBalancerType: "Network",
///     loadBalancerName: name,
///     vpcId: createVpc.id,
///     addressType: "Internet",
/// });
/// const createSg = new alicloud.nlb.ServerGroup("create_sg", {
///     addressIpVersion: "Ipv4",
///     scheduler: "Wrr",
///     healthCheck: {},
///     serverGroupType: "Instance",
///     vpcId: createVpc.id,
///     protocol: "TCPSSL",
///     serverGroupName: name,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const ssl0 = new alicloud.cas.ServiceCertificate("ssl0", {
///     cert: `-----BEGIN CERTIFICATE-----
/// MIIDhDCCAmwCCQCwJW4JChLBqTANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMC
/// Q04xEDAOBgNVBAgMB0JlaWppbmcxEDAOBgNVBAcMB0JlaWppbmcxDDAKBgNVBAoM
/// A0FsaTEPMA0GA1UECwwGQWxpeXVuMRIwEAYDVQQDDAlUZXJyYWZvcm0xHTAbBgkq
/// hkiG9w0BCQEWDjEyM0BhbGl5dW0uY29tMB4XDTI0MTIyNTA3MjQ0OFoXDTI3MTIy
/// NTA3MjQ0OFowgYMxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlqaW5nMRAwDgYD
/// VQQHDAdCZWlqaW5nMQwwCgYDVQQKDANBbGkxDzANBgNVBAsMBkFsaXl1bjESMBAG
/// A1UEAwwJVGVycmFmb3JtMR0wGwYJKoZIhvcNAQkBFg4xMjNAYWxpeXVtLmNvbTCC
/// ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK4UufXydtJZeW6lX9VahVIk
/// ifblYCVkFcFoderF2FtD5AeMZJ+v+chHc7RiV+U7P3o0Fzk+cg7OL9dSEYBrwHK4
/// 9yCwU/Mv+I/KsS8GjrRMOPjbrYvI0GjheEPJcILbt29tygrxX2PwV6FqWNknbGpk
/// Ej8L9zTL977IHBmgw8A2AeKlqV64s8ydAgGbWO3NTK64OlEJJNR+J+75uYskNT3s
/// 8DqaQV/IWlGAiUmGVeorWkrAWCfx2zSwI9jU8pNHtSF7PyxlbRy1ir2Lv1WnQKHf
/// Bnhr/wXwKOL5IJRVZ144Z9TdcoPo4GbFmYMSTwYFIbjYZ3yxoygeXMk0UXPZxVsC
/// AwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVPA+Q0/5T6VzVw+MFXjCxXH1mWgd767w
/// YWX4tvdGsTDkK6/ESm8m9GDp5F3p7Degk0isr9XkyzkWo/nPEPWQOeYR0kNTvpwY
/// mKz9/aJwxalHS6O/8K2Ed6pZcXW0SUfjdH0/9YHw+vu4i2cQGTICzrKuEvyck40y
/// fQocvFyw6O7W+tewLA4ntTuC6HhEQbC0p7zxGc3LSuayBgJrJiOAnGvFu+/OFQi+
/// zEXi1xt8uQR6q5DQDsfqNCxpRKsCmU+POzNg2Y31GDMv4ZPerou5jXa1gh8/TVBT
/// IX3OTy5aL4Ue8nBip3bVw+V/9L9xhmXbex6IMwwvrWI4OfMt6ECifQ==
/// -----END CERTIFICATE-----
/// `,
///     certificateName: std.join({
///         separator: "-",
///         input: [
///             name,
///             defaultInteger.result,
///             "0",
///         ],
///     }).then(invoke => invoke.result),
///     key: `-----BEGIN RSA PRIVATE KEY-----
/// MIIEogIBAAKCAQEArhS59fJ20ll5bqVf1VqFUiSJ9uVgJWQVwWh16sXYW0PkB4xk
/// n6/5yEdztGJX5Ts/ejQXOT5yDs4v11IRgGvAcrj3ILBT8y/4j8qxLwaOtEw4+Nut
/// i8jQaOF4Q8lwgtu3b23KCvFfY/BXoWpY2SdsamQSPwv3NMv3vsgcGaDDwDYB4qWp
/// XrizzJ0CAZtY7c1Mrrg6UQkk1H4n7vm5iyQ1PezwOppBX8haUYCJSYZV6itaSsBY
/// J/HbNLAj2NTyk0e1IXs/LGVtHLWKvYu/VadAod8GeGv/BfAo4vkglFVnXjhn1N1y
/// g+jgZsWZgxJPBgUhuNhnfLGjKB5cyTRRc9nFWwIDAQABAoIBAC0D2Q6bc1RzpK4S
/// /5QZQ055el+o8tLYbbPEwnFCVe9LwASfrkmI5OuAZpAnuhjh2ElOfQ7lcfMYKFDi
/// vPnbYzmHUQhX8G17YygzvtutM2u2JilcDSWPeS0V2NaWmYyNKoMa/dsUjZk3RkHM
/// UUteIW/ljr5U5sj1UYw5DOMnqlbicy2cPPY4g1QKGW5t3p5Lxw5ojgqynzi8EKMq
/// j0apEoTXxmciOrwwiP2ynRTEN77+FUZkTvmxmSPoIfNTycDPRr4aUwVHV2d5FHPn
/// d1MdjSoUPbHdOLfynwXqTz9OlvMSUDrBvs6k5ripGY9qvh9PrOdj7zLXVRQXUuOR
/// YwoVHKECgYEA1NzNGifjW5cdcbkzc86QA9TM7yAyBmgnopzlm+dFIhxtJmydxN4V
/// 820x1Lkfe2vLCyYQ6fcEKAtjC9qdw+E2uzHAbtvnR4JseF3z1D82xw3MgGT9l3zc
/// mMrgKmdCGGLWi6hboylX+2GBMVl2R0aRZrZje67jZcDXd06mlvW257ECgYEA0Vv1
/// X3Ubn8XA3AA1ybem8fWNwEXfcYP1lJq0cX1gUXlpQvxWN61//aFZUCJZw5cEPArQ
/// rEqhT81VCqXGO/by6D3fJD+4P8D6v6szJK2AGvXkZMfnJwAbHcOyGlxMin1CTJss
/// ZID0XI9xmbedm7Wi40+qXz8q4rs25kft9YjfzMsCgYBSPfE8vtaYJ52nt7+Kae+4
/// mzqG1XCeixVtPaN1BfjvAf6mDucyDgB7KeBL6S6ht/ceGpoEW30On7+n79JuwRAt
/// aT6JVotYVKrmIp63jajzZYByxxI3unVcz12m5HhkBaQRF344XxvwMy8ASyloxnod
/// LjDns52GTeix3wB8aPk/MQKBgGOQRwXpjISUKB64HtxacZN6ArqgwB2c8uqEFDIw
/// vOCiS7Pmix4ZbdfxpqbcXzIMHKBtSEXXjBWGgd35bmfQDj7yRa9Yekgff2Ati7ny
/// pQytSbu/8abzfvHNwmKU6HWoEiKaXSdCyHNIaG8BCnwlilxt44k+YifHftlO9dSi
/// DkS3AoGAYmF++8uEvQot5Yma4GraY+7ZyfWNLwClsOsrN2g19Vycg16fJk0olwDx
/// 2kRWKqNn99HJJwiLie1nvsDRJLbmzmI91Pttpu/EYFDJ8OYQOr1OhhPwwTygf+7S
/// 1o2RTXu3gKNG6fxOtHFatws3IzvovOASYyJR5XP2sIJURLOrSN0=
/// -----END RSA PRIVATE KEY-----
/// `,
/// });
/// const createListener = new alicloud.nlb.Listener("create_listener", {
///     listenerPort: 443,
///     serverGroupId: createSg.id,
///     loadBalancerId: lb.id,
///     listenerProtocol: "TCPSSL",
///     certificateIds: [pulumi.interpolate`${ssl0.id}-cn-hangzhou`],
///     caCertificateIds: [],
/// });
/// const ssl = new alicloud.cas.ServiceCertificate("ssl", {
///     cert: `-----BEGIN CERTIFICATE-----
/// MIIDRjCCAq+gAwIBAgIJAJn3ox4K13PoMA0GCSqGSIb3DQEBBQUAMHYxCzAJBgNV
/// BAYTAkNOMQswCQYDVQQIEwJCSjELMAkGA1UEBxMCQkoxDDAKBgNVBAoTA0FMSTEP
/// MA0GA1UECxMGQUxJWVVOMQ0wCwYDVQQDEwR0ZXN0MR8wHQYJKoZIhvcNAQkBFhB0
/// ZXN0QGhvdG1haWwuY29tMB4XDTE0MTEyNDA2MDQyNVoXDTI0MTEyMTA2MDQyNVow
/// djELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAkJKMQswCQYDVQQHEwJCSjEMMAoGA1UE
/// ChMDQUxJMQ8wDQYDVQQLEwZBTElZVU4xDTALBgNVBAMTBHRlc3QxHzAdBgkqhkiG
/// 9w0BCQEWEHRlc3RAaG90bWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJ
/// AoGBAM7SS3e9+Nj0HKAsRuIDNSsS3UK6b+62YQb2uuhKrp1HMrOx61WSDR2qkAnB
/// coG00Uz38EE+9DLYNUVQBK7aSgLP5M1Ak4wr4GqGyCgjejzzh3DshUzLCCy2rook
/// KOyRTlPX+Q5l7rE1fcSNzgepcae5i2sE1XXXzLRIDIvQxcspAgMBAAGjgdswgdgw
/// HQYDVR0OBBYEFBdy+OuMsvbkV7R14f0OyoLoh2z4MIGoBgNVHSMEgaAwgZ2AFBdy
/// +OuMsvbkV7R14f0OyoLoh2z4oXqkeDB2MQswCQYDVQQGEwJDTjELMAkGA1UECBMC
/// QkoxCzAJBgNVBAcTAkJKMQwwCgYDVQQKEwNBTEkxDzANBgNVBAsTBkFMSVlVTjEN
/// MAsGA1UEAxMEdGVzdDEfMB0GCSqGSIb3DQEJARYQdGVzdEBob3RtYWlsLmNvbYIJ
/// AJn3ox4K13PoMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAY7KOsnyT
/// cQzfhiiG7ASjiPakw5wXoycHt5GCvLG5htp2TKVzgv9QTliA3gtfv6oV4zRZx7X1
/// Ofi6hVgErtHaXJheuPVeW6eAW8mHBoEfvDAfU3y9waYrtUevSl07643bzKL6v+Qd
/// DUBTxOAvSYfXTtI90EAxEG/bJJyOm5LqoiA=
/// -----END CERTIFICATE-----
/// `,
///     certificateName: std.join({
///         separator: "-",
///         input: [
///             name,
///             defaultInteger.result,
///             "1",
///         ],
///     }).then(invoke => invoke.result),
///     key: `-----BEGIN RSA PRIVATE KEY-----
/// MIICXAIBAAKBgQDO0kt3vfjY9BygLEbiAzUrEt1Cum/utmEG9rroSq6dRzKzsetV
/// kg0dqpAJwXKBtNFM9/BBPvQy2DVFUASu2koCz+TNQJOMK+BqhsgoI3o884dw7IVM
/// ywgstq6KJCjskU5T1/kOZe6xNX3Ejc4HqXGnuYtrBNV118y0SAyL0MXLKQIDAQAB
/// AoGAfe3NxbsGKhN42o4bGsKZPQDfeCHMxayGp5bTd10BtQIE/ST4BcJH+ihAS7Bd
/// 6FwQlKzivNd4GP1MckemklCXfsVckdL94e8ZbJl23GdWul3v8V+KndJHqv5zVJmP
/// hwWoKimwIBTb2s0ctVryr2f18N4hhyFw1yGp0VxclGHkjgECQQD9CvllsnOwHpP4
/// MdrDHbdb29QrobKyKW8pPcDd+sth+kP6Y8MnCVuAKXCKj5FeIsgVtfluPOsZjPzz
/// 71QQWS1dAkEA0T0KXO8gaBQwJhIoo/w6hy5JGZnrNSpOPp5xvJuMAafs2eyvmhJm
/// Ev9SN/Pf2VYa1z6FEnBaLOVD6hf6YQIsPQJAX/CZPoW6dzwgvimo1/GcY6eleiWE
/// qygqjWhsh71e/3bz7yuEAnj5yE3t7Zshcp+dXR3xxGo0eSuLfLFxHgGxwQJAAxf8
/// 9DzQ5NkPkTCJi0sqbl8/03IUKTgT6hcbpWdDXa7m8J3wRr3o5nUB+TPQ5nzAbthM
/// zWX931YQeACcwhxvHQJBAN5mTzzJD4w4Ma6YTaNHyXakdYfyAWrOkPIWZxfhMfXe
/// DrlNdiysTI4Dd1dLeErVpjsckAaOW/JDG5PCSwkaMxk=
/// -----END RSA PRIVATE KEY-----
/// `,
/// });
/// const defaultListenerAdditionalCertificateAttachment = new alicloud.nlb.ListenerAdditionalCertificateAttachment("default", {
///     certificateId: ssl.id,
///     listenerId: createListener.id,
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
///     name = "tf-example"
/// default = alicloud.nlb.get_zones()
/// create_vpc = alicloud.vpc.Network("create_vpc", cidr_block="172.16.0.0/12")
/// create_vsw_j = alicloud.vpc.Switch("create_vsw_j",
///     vpc_id=create_vpc.id,
///     zone_id=default.zones[0].id,
///     cidr_block="172.16.1.0/24")
/// create_vsw_k = alicloud.vpc.Switch("create_vsw_k",
///     vpc_id=create_vpc.id,
///     zone_id=default.zones[1].id,
///     cidr_block="172.16.2.0/24")
/// lb = alicloud.nlb.LoadBalancer("lb",
///     address_ip_version="Ipv4",
///     zone_mappings=[
///         {
///             "vswitch_id": create_vsw_j.id,
///             "zone_id": create_vsw_j.zone_id,
///         },
///         {
///             "vswitch_id": create_vsw_k.id,
///             "zone_id": create_vsw_k.zone_id,
///         },
///     ],
///     load_balancer_type="Network",
///     load_balancer_name=name,
///     vpc_id=create_vpc.id,
///     address_type="Internet")
/// create_sg = alicloud.nlb.ServerGroup("create_sg",
///     address_ip_version="Ipv4",
///     scheduler="Wrr",
///     health_check={},
///     server_group_type="Instance",
///     vpc_id=create_vpc.id,
///     protocol="TCPSSL",
///     server_group_name=name)
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// ssl0 = alicloud.cas.ServiceCertificate("ssl0",
///     cert="""-----BEGIN CERTIFICATE-----
/// MIIDhDCCAmwCCQCwJW4JChLBqTANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMC
/// Q04xEDAOBgNVBAgMB0JlaWppbmcxEDAOBgNVBAcMB0JlaWppbmcxDDAKBgNVBAoM
/// A0FsaTEPMA0GA1UECwwGQWxpeXVuMRIwEAYDVQQDDAlUZXJyYWZvcm0xHTAbBgkq
/// hkiG9w0BCQEWDjEyM0BhbGl5dW0uY29tMB4XDTI0MTIyNTA3MjQ0OFoXDTI3MTIy
/// NTA3MjQ0OFowgYMxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlqaW5nMRAwDgYD
/// VQQHDAdCZWlqaW5nMQwwCgYDVQQKDANBbGkxDzANBgNVBAsMBkFsaXl1bjESMBAG
/// A1UEAwwJVGVycmFmb3JtMR0wGwYJKoZIhvcNAQkBFg4xMjNAYWxpeXVtLmNvbTCC
/// ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK4UufXydtJZeW6lX9VahVIk
/// ifblYCVkFcFoderF2FtD5AeMZJ+v+chHc7RiV+U7P3o0Fzk+cg7OL9dSEYBrwHK4
/// 9yCwU/Mv+I/KsS8GjrRMOPjbrYvI0GjheEPJcILbt29tygrxX2PwV6FqWNknbGpk
/// Ej8L9zTL977IHBmgw8A2AeKlqV64s8ydAgGbWO3NTK64OlEJJNR+J+75uYskNT3s
/// 8DqaQV/IWlGAiUmGVeorWkrAWCfx2zSwI9jU8pNHtSF7PyxlbRy1ir2Lv1WnQKHf
/// Bnhr/wXwKOL5IJRVZ144Z9TdcoPo4GbFmYMSTwYFIbjYZ3yxoygeXMk0UXPZxVsC
/// AwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVPA+Q0/5T6VzVw+MFXjCxXH1mWgd767w
/// YWX4tvdGsTDkK6/ESm8m9GDp5F3p7Degk0isr9XkyzkWo/nPEPWQOeYR0kNTvpwY
/// mKz9/aJwxalHS6O/8K2Ed6pZcXW0SUfjdH0/9YHw+vu4i2cQGTICzrKuEvyck40y
/// fQocvFyw6O7W+tewLA4ntTuC6HhEQbC0p7zxGc3LSuayBgJrJiOAnGvFu+/OFQi+
/// zEXi1xt8uQR6q5DQDsfqNCxpRKsCmU+POzNg2Y31GDMv4ZPerou5jXa1gh8/TVBT
/// IX3OTy5aL4Ue8nBip3bVw+V/9L9xhmXbex6IMwwvrWI4OfMt6ECifQ==
/// -----END CERTIFICATE-----
/// """,
///     certificate_name=std.join(separator="-",
///         input=[
///             name,
///             default_integer["result"],
///             0,
///         ]).result,
///     key="""-----BEGIN RSA PRIVATE KEY-----
/// MIIEogIBAAKCAQEArhS59fJ20ll5bqVf1VqFUiSJ9uVgJWQVwWh16sXYW0PkB4xk
/// n6/5yEdztGJX5Ts/ejQXOT5yDs4v11IRgGvAcrj3ILBT8y/4j8qxLwaOtEw4+Nut
/// i8jQaOF4Q8lwgtu3b23KCvFfY/BXoWpY2SdsamQSPwv3NMv3vsgcGaDDwDYB4qWp
/// XrizzJ0CAZtY7c1Mrrg6UQkk1H4n7vm5iyQ1PezwOppBX8haUYCJSYZV6itaSsBY
/// J/HbNLAj2NTyk0e1IXs/LGVtHLWKvYu/VadAod8GeGv/BfAo4vkglFVnXjhn1N1y
/// g+jgZsWZgxJPBgUhuNhnfLGjKB5cyTRRc9nFWwIDAQABAoIBAC0D2Q6bc1RzpK4S
/// /5QZQ055el+o8tLYbbPEwnFCVe9LwASfrkmI5OuAZpAnuhjh2ElOfQ7lcfMYKFDi
/// vPnbYzmHUQhX8G17YygzvtutM2u2JilcDSWPeS0V2NaWmYyNKoMa/dsUjZk3RkHM
/// UUteIW/ljr5U5sj1UYw5DOMnqlbicy2cPPY4g1QKGW5t3p5Lxw5ojgqynzi8EKMq
/// j0apEoTXxmciOrwwiP2ynRTEN77+FUZkTvmxmSPoIfNTycDPRr4aUwVHV2d5FHPn
/// d1MdjSoUPbHdOLfynwXqTz9OlvMSUDrBvs6k5ripGY9qvh9PrOdj7zLXVRQXUuOR
/// YwoVHKECgYEA1NzNGifjW5cdcbkzc86QA9TM7yAyBmgnopzlm+dFIhxtJmydxN4V
/// 820x1Lkfe2vLCyYQ6fcEKAtjC9qdw+E2uzHAbtvnR4JseF3z1D82xw3MgGT9l3zc
/// mMrgKmdCGGLWi6hboylX+2GBMVl2R0aRZrZje67jZcDXd06mlvW257ECgYEA0Vv1
/// X3Ubn8XA3AA1ybem8fWNwEXfcYP1lJq0cX1gUXlpQvxWN61//aFZUCJZw5cEPArQ
/// rEqhT81VCqXGO/by6D3fJD+4P8D6v6szJK2AGvXkZMfnJwAbHcOyGlxMin1CTJss
/// ZID0XI9xmbedm7Wi40+qXz8q4rs25kft9YjfzMsCgYBSPfE8vtaYJ52nt7+Kae+4
/// mzqG1XCeixVtPaN1BfjvAf6mDucyDgB7KeBL6S6ht/ceGpoEW30On7+n79JuwRAt
/// aT6JVotYVKrmIp63jajzZYByxxI3unVcz12m5HhkBaQRF344XxvwMy8ASyloxnod
/// LjDns52GTeix3wB8aPk/MQKBgGOQRwXpjISUKB64HtxacZN6ArqgwB2c8uqEFDIw
/// vOCiS7Pmix4ZbdfxpqbcXzIMHKBtSEXXjBWGgd35bmfQDj7yRa9Yekgff2Ati7ny
/// pQytSbu/8abzfvHNwmKU6HWoEiKaXSdCyHNIaG8BCnwlilxt44k+YifHftlO9dSi
/// DkS3AoGAYmF++8uEvQot5Yma4GraY+7ZyfWNLwClsOsrN2g19Vycg16fJk0olwDx
/// 2kRWKqNn99HJJwiLie1nvsDRJLbmzmI91Pttpu/EYFDJ8OYQOr1OhhPwwTygf+7S
/// 1o2RTXu3gKNG6fxOtHFatws3IzvovOASYyJR5XP2sIJURLOrSN0=
/// -----END RSA PRIVATE KEY-----
/// """)
/// create_listener = alicloud.nlb.Listener("create_listener",
///     listener_port=443,
///     server_group_id=create_sg.id,
///     load_balancer_id=lb.id,
///     listener_protocol="TCPSSL",
///     certificate_ids=[ssl0.id.apply(lambda id: f"{id}-cn-hangzhou")],
///     ca_certificate_ids=[])
/// ssl = alicloud.cas.ServiceCertificate("ssl",
///     cert="""-----BEGIN CERTIFICATE-----
/// MIIDRjCCAq+gAwIBAgIJAJn3ox4K13PoMA0GCSqGSIb3DQEBBQUAMHYxCzAJBgNV
/// BAYTAkNOMQswCQYDVQQIEwJCSjELMAkGA1UEBxMCQkoxDDAKBgNVBAoTA0FMSTEP
/// MA0GA1UECxMGQUxJWVVOMQ0wCwYDVQQDEwR0ZXN0MR8wHQYJKoZIhvcNAQkBFhB0
/// ZXN0QGhvdG1haWwuY29tMB4XDTE0MTEyNDA2MDQyNVoXDTI0MTEyMTA2MDQyNVow
/// djELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAkJKMQswCQYDVQQHEwJCSjEMMAoGA1UE
/// ChMDQUxJMQ8wDQYDVQQLEwZBTElZVU4xDTALBgNVBAMTBHRlc3QxHzAdBgkqhkiG
/// 9w0BCQEWEHRlc3RAaG90bWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJ
/// AoGBAM7SS3e9+Nj0HKAsRuIDNSsS3UK6b+62YQb2uuhKrp1HMrOx61WSDR2qkAnB
/// coG00Uz38EE+9DLYNUVQBK7aSgLP5M1Ak4wr4GqGyCgjejzzh3DshUzLCCy2rook
/// KOyRTlPX+Q5l7rE1fcSNzgepcae5i2sE1XXXzLRIDIvQxcspAgMBAAGjgdswgdgw
/// HQYDVR0OBBYEFBdy+OuMsvbkV7R14f0OyoLoh2z4MIGoBgNVHSMEgaAwgZ2AFBdy
/// +OuMsvbkV7R14f0OyoLoh2z4oXqkeDB2MQswCQYDVQQGEwJDTjELMAkGA1UECBMC
/// QkoxCzAJBgNVBAcTAkJKMQwwCgYDVQQKEwNBTEkxDzANBgNVBAsTBkFMSVlVTjEN
/// MAsGA1UEAxMEdGVzdDEfMB0GCSqGSIb3DQEJARYQdGVzdEBob3RtYWlsLmNvbYIJ
/// AJn3ox4K13PoMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAY7KOsnyT
/// cQzfhiiG7ASjiPakw5wXoycHt5GCvLG5htp2TKVzgv9QTliA3gtfv6oV4zRZx7X1
/// Ofi6hVgErtHaXJheuPVeW6eAW8mHBoEfvDAfU3y9waYrtUevSl07643bzKL6v+Qd
/// DUBTxOAvSYfXTtI90EAxEG/bJJyOm5LqoiA=
/// -----END CERTIFICATE-----
/// """,
///     certificate_name=std.join(separator="-",
///         input=[
///             name,
///             default_integer["result"],
///             1,
///         ]).result,
///     key="""-----BEGIN RSA PRIVATE KEY-----
/// MIICXAIBAAKBgQDO0kt3vfjY9BygLEbiAzUrEt1Cum/utmEG9rroSq6dRzKzsetV
/// kg0dqpAJwXKBtNFM9/BBPvQy2DVFUASu2koCz+TNQJOMK+BqhsgoI3o884dw7IVM
/// ywgstq6KJCjskU5T1/kOZe6xNX3Ejc4HqXGnuYtrBNV118y0SAyL0MXLKQIDAQAB
/// AoGAfe3NxbsGKhN42o4bGsKZPQDfeCHMxayGp5bTd10BtQIE/ST4BcJH+ihAS7Bd
/// 6FwQlKzivNd4GP1MckemklCXfsVckdL94e8ZbJl23GdWul3v8V+KndJHqv5zVJmP
/// hwWoKimwIBTb2s0ctVryr2f18N4hhyFw1yGp0VxclGHkjgECQQD9CvllsnOwHpP4
/// MdrDHbdb29QrobKyKW8pPcDd+sth+kP6Y8MnCVuAKXCKj5FeIsgVtfluPOsZjPzz
/// 71QQWS1dAkEA0T0KXO8gaBQwJhIoo/w6hy5JGZnrNSpOPp5xvJuMAafs2eyvmhJm
/// Ev9SN/Pf2VYa1z6FEnBaLOVD6hf6YQIsPQJAX/CZPoW6dzwgvimo1/GcY6eleiWE
/// qygqjWhsh71e/3bz7yuEAnj5yE3t7Zshcp+dXR3xxGo0eSuLfLFxHgGxwQJAAxf8
/// 9DzQ5NkPkTCJi0sqbl8/03IUKTgT6hcbpWdDXa7m8J3wRr3o5nUB+TPQ5nzAbthM
/// zWX931YQeACcwhxvHQJBAN5mTzzJD4w4Ma6YTaNHyXakdYfyAWrOkPIWZxfhMfXe
/// DrlNdiysTI4Dd1dLeErVpjsckAaOW/JDG5PCSwkaMxk=
/// -----END RSA PRIVATE KEY-----
/// """)
/// default_listener_additional_certificate_attachment = alicloud.nlb.ListenerAdditionalCertificateAttachment("default",
///     certificate_id=ssl.id,
///     listener_id=create_listener.id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Nlb.GetZones.Invoke();
///
///     var createVpc = new AliCloud.Vpc.Network("create_vpc", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var createVswJ = new AliCloud.Vpc.Switch("create_vsw_j", new()
///     {
///         VpcId = createVpc.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var createVswK = new AliCloud.Vpc.Switch("create_vsw_k", new()
///     {
///         VpcId = createVpc.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///         CidrBlock = "172.16.2.0/24",
///     });
///
///     var lb = new AliCloud.Nlb.LoadBalancer("lb", new()
///     {
///         AddressIpVersion = "Ipv4",
///         ZoneMappings = new[]
///         {
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = createVswJ.Id,
///                 ZoneId = createVswJ.ZoneId,
///             },
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = createVswK.Id,
///                 ZoneId = createVswK.ZoneId,
///             },
///         },
///         LoadBalancerType = "Network",
///         LoadBalancerName = name,
///         VpcId = createVpc.Id,
///         AddressType = "Internet",
///     });
///
///     var createSg = new AliCloud.Nlb.ServerGroup("create_sg", new()
///     {
///         AddressIpVersion = "Ipv4",
///         Scheduler = "Wrr",
///         HealthCheck = null,
///         ServerGroupType = "Instance",
///         VpcId = createVpc.Id,
///         Protocol = "TCPSSL",
///         ServerGroupName = name,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var ssl0 = new AliCloud.Cas.ServiceCertificate("ssl0", new()
///     {
///         Cert = @"-----BEGIN CERTIFICATE-----
/// MIIDhDCCAmwCCQCwJW4JChLBqTANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMC
/// Q04xEDAOBgNVBAgMB0JlaWppbmcxEDAOBgNVBAcMB0JlaWppbmcxDDAKBgNVBAoM
/// A0FsaTEPMA0GA1UECwwGQWxpeXVuMRIwEAYDVQQDDAlUZXJyYWZvcm0xHTAbBgkq
/// hkiG9w0BCQEWDjEyM0BhbGl5dW0uY29tMB4XDTI0MTIyNTA3MjQ0OFoXDTI3MTIy
/// NTA3MjQ0OFowgYMxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlqaW5nMRAwDgYD
/// VQQHDAdCZWlqaW5nMQwwCgYDVQQKDANBbGkxDzANBgNVBAsMBkFsaXl1bjESMBAG
/// A1UEAwwJVGVycmFmb3JtMR0wGwYJKoZIhvcNAQkBFg4xMjNAYWxpeXVtLmNvbTCC
/// ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK4UufXydtJZeW6lX9VahVIk
/// ifblYCVkFcFoderF2FtD5AeMZJ+v+chHc7RiV+U7P3o0Fzk+cg7OL9dSEYBrwHK4
/// 9yCwU/Mv+I/KsS8GjrRMOPjbrYvI0GjheEPJcILbt29tygrxX2PwV6FqWNknbGpk
/// Ej8L9zTL977IHBmgw8A2AeKlqV64s8ydAgGbWO3NTK64OlEJJNR+J+75uYskNT3s
/// 8DqaQV/IWlGAiUmGVeorWkrAWCfx2zSwI9jU8pNHtSF7PyxlbRy1ir2Lv1WnQKHf
/// Bnhr/wXwKOL5IJRVZ144Z9TdcoPo4GbFmYMSTwYFIbjYZ3yxoygeXMk0UXPZxVsC
/// AwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVPA+Q0/5T6VzVw+MFXjCxXH1mWgd767w
/// YWX4tvdGsTDkK6/ESm8m9GDp5F3p7Degk0isr9XkyzkWo/nPEPWQOeYR0kNTvpwY
/// mKz9/aJwxalHS6O/8K2Ed6pZcXW0SUfjdH0/9YHw+vu4i2cQGTICzrKuEvyck40y
/// fQocvFyw6O7W+tewLA4ntTuC6HhEQbC0p7zxGc3LSuayBgJrJiOAnGvFu+/OFQi+
/// zEXi1xt8uQR6q5DQDsfqNCxpRKsCmU+POzNg2Y31GDMv4ZPerou5jXa1gh8/TVBT
/// IX3OTy5aL4Ue8nBip3bVw+V/9L9xhmXbex6IMwwvrWI4OfMt6ECifQ==
/// -----END CERTIFICATE-----
/// ",
///         CertificateName = Std.Join.Invoke(new()
///         {
///             Separator = "-",
///             Input = new[]
///             {
///                 name,
///                 defaultInteger.Result,
///                 "0",
///             },
///         }).Apply(invoke => invoke.Result),
///         Key = @"-----BEGIN RSA PRIVATE KEY-----
/// MIIEogIBAAKCAQEArhS59fJ20ll5bqVf1VqFUiSJ9uVgJWQVwWh16sXYW0PkB4xk
/// n6/5yEdztGJX5Ts/ejQXOT5yDs4v11IRgGvAcrj3ILBT8y/4j8qxLwaOtEw4+Nut
/// i8jQaOF4Q8lwgtu3b23KCvFfY/BXoWpY2SdsamQSPwv3NMv3vsgcGaDDwDYB4qWp
/// XrizzJ0CAZtY7c1Mrrg6UQkk1H4n7vm5iyQ1PezwOppBX8haUYCJSYZV6itaSsBY
/// J/HbNLAj2NTyk0e1IXs/LGVtHLWKvYu/VadAod8GeGv/BfAo4vkglFVnXjhn1N1y
/// g+jgZsWZgxJPBgUhuNhnfLGjKB5cyTRRc9nFWwIDAQABAoIBAC0D2Q6bc1RzpK4S
/// /5QZQ055el+o8tLYbbPEwnFCVe9LwASfrkmI5OuAZpAnuhjh2ElOfQ7lcfMYKFDi
/// vPnbYzmHUQhX8G17YygzvtutM2u2JilcDSWPeS0V2NaWmYyNKoMa/dsUjZk3RkHM
/// UUteIW/ljr5U5sj1UYw5DOMnqlbicy2cPPY4g1QKGW5t3p5Lxw5ojgqynzi8EKMq
/// j0apEoTXxmciOrwwiP2ynRTEN77+FUZkTvmxmSPoIfNTycDPRr4aUwVHV2d5FHPn
/// d1MdjSoUPbHdOLfynwXqTz9OlvMSUDrBvs6k5ripGY9qvh9PrOdj7zLXVRQXUuOR
/// YwoVHKECgYEA1NzNGifjW5cdcbkzc86QA9TM7yAyBmgnopzlm+dFIhxtJmydxN4V
/// 820x1Lkfe2vLCyYQ6fcEKAtjC9qdw+E2uzHAbtvnR4JseF3z1D82xw3MgGT9l3zc
/// mMrgKmdCGGLWi6hboylX+2GBMVl2R0aRZrZje67jZcDXd06mlvW257ECgYEA0Vv1
/// X3Ubn8XA3AA1ybem8fWNwEXfcYP1lJq0cX1gUXlpQvxWN61//aFZUCJZw5cEPArQ
/// rEqhT81VCqXGO/by6D3fJD+4P8D6v6szJK2AGvXkZMfnJwAbHcOyGlxMin1CTJss
/// ZID0XI9xmbedm7Wi40+qXz8q4rs25kft9YjfzMsCgYBSPfE8vtaYJ52nt7+Kae+4
/// mzqG1XCeixVtPaN1BfjvAf6mDucyDgB7KeBL6S6ht/ceGpoEW30On7+n79JuwRAt
/// aT6JVotYVKrmIp63jajzZYByxxI3unVcz12m5HhkBaQRF344XxvwMy8ASyloxnod
/// LjDns52GTeix3wB8aPk/MQKBgGOQRwXpjISUKB64HtxacZN6ArqgwB2c8uqEFDIw
/// vOCiS7Pmix4ZbdfxpqbcXzIMHKBtSEXXjBWGgd35bmfQDj7yRa9Yekgff2Ati7ny
/// pQytSbu/8abzfvHNwmKU6HWoEiKaXSdCyHNIaG8BCnwlilxt44k+YifHftlO9dSi
/// DkS3AoGAYmF++8uEvQot5Yma4GraY+7ZyfWNLwClsOsrN2g19Vycg16fJk0olwDx
/// 2kRWKqNn99HJJwiLie1nvsDRJLbmzmI91Pttpu/EYFDJ8OYQOr1OhhPwwTygf+7S
/// 1o2RTXu3gKNG6fxOtHFatws3IzvovOASYyJR5XP2sIJURLOrSN0=
/// -----END RSA PRIVATE KEY-----
/// ",
///     });
///
///     var createListener = new AliCloud.Nlb.Listener("create_listener", new()
///     {
///         ListenerPort = 443,
///         ServerGroupId = createSg.Id,
///         LoadBalancerId = lb.Id,
///         ListenerProtocol = "TCPSSL",
///         CertificateIds = new[]
///         {
///             ssl0.Id.Apply(id => $"{id}-cn-hangzhou"),
///         },
///         CaCertificateIds = new[] {},
///     });
///
///     var ssl = new AliCloud.Cas.ServiceCertificate("ssl", new()
///     {
///         Cert = @"-----BEGIN CERTIFICATE-----
/// MIIDRjCCAq+gAwIBAgIJAJn3ox4K13PoMA0GCSqGSIb3DQEBBQUAMHYxCzAJBgNV
/// BAYTAkNOMQswCQYDVQQIEwJCSjELMAkGA1UEBxMCQkoxDDAKBgNVBAoTA0FMSTEP
/// MA0GA1UECxMGQUxJWVVOMQ0wCwYDVQQDEwR0ZXN0MR8wHQYJKoZIhvcNAQkBFhB0
/// ZXN0QGhvdG1haWwuY29tMB4XDTE0MTEyNDA2MDQyNVoXDTI0MTEyMTA2MDQyNVow
/// djELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAkJKMQswCQYDVQQHEwJCSjEMMAoGA1UE
/// ChMDQUxJMQ8wDQYDVQQLEwZBTElZVU4xDTALBgNVBAMTBHRlc3QxHzAdBgkqhkiG
/// 9w0BCQEWEHRlc3RAaG90bWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJ
/// AoGBAM7SS3e9+Nj0HKAsRuIDNSsS3UK6b+62YQb2uuhKrp1HMrOx61WSDR2qkAnB
/// coG00Uz38EE+9DLYNUVQBK7aSgLP5M1Ak4wr4GqGyCgjejzzh3DshUzLCCy2rook
/// KOyRTlPX+Q5l7rE1fcSNzgepcae5i2sE1XXXzLRIDIvQxcspAgMBAAGjgdswgdgw
/// HQYDVR0OBBYEFBdy+OuMsvbkV7R14f0OyoLoh2z4MIGoBgNVHSMEgaAwgZ2AFBdy
/// +OuMsvbkV7R14f0OyoLoh2z4oXqkeDB2MQswCQYDVQQGEwJDTjELMAkGA1UECBMC
/// QkoxCzAJBgNVBAcTAkJKMQwwCgYDVQQKEwNBTEkxDzANBgNVBAsTBkFMSVlVTjEN
/// MAsGA1UEAxMEdGVzdDEfMB0GCSqGSIb3DQEJARYQdGVzdEBob3RtYWlsLmNvbYIJ
/// AJn3ox4K13PoMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAY7KOsnyT
/// cQzfhiiG7ASjiPakw5wXoycHt5GCvLG5htp2TKVzgv9QTliA3gtfv6oV4zRZx7X1
/// Ofi6hVgErtHaXJheuPVeW6eAW8mHBoEfvDAfU3y9waYrtUevSl07643bzKL6v+Qd
/// DUBTxOAvSYfXTtI90EAxEG/bJJyOm5LqoiA=
/// -----END CERTIFICATE-----
/// ",
///         CertificateName = Std.Join.Invoke(new()
///         {
///             Separator = "-",
///             Input = new[]
///             {
///                 name,
///                 defaultInteger.Result,
///                 "1",
///             },
///         }).Apply(invoke => invoke.Result),
///         Key = @"-----BEGIN RSA PRIVATE KEY-----
/// MIICXAIBAAKBgQDO0kt3vfjY9BygLEbiAzUrEt1Cum/utmEG9rroSq6dRzKzsetV
/// kg0dqpAJwXKBtNFM9/BBPvQy2DVFUASu2koCz+TNQJOMK+BqhsgoI3o884dw7IVM
/// ywgstq6KJCjskU5T1/kOZe6xNX3Ejc4HqXGnuYtrBNV118y0SAyL0MXLKQIDAQAB
/// AoGAfe3NxbsGKhN42o4bGsKZPQDfeCHMxayGp5bTd10BtQIE/ST4BcJH+ihAS7Bd
/// 6FwQlKzivNd4GP1MckemklCXfsVckdL94e8ZbJl23GdWul3v8V+KndJHqv5zVJmP
/// hwWoKimwIBTb2s0ctVryr2f18N4hhyFw1yGp0VxclGHkjgECQQD9CvllsnOwHpP4
/// MdrDHbdb29QrobKyKW8pPcDd+sth+kP6Y8MnCVuAKXCKj5FeIsgVtfluPOsZjPzz
/// 71QQWS1dAkEA0T0KXO8gaBQwJhIoo/w6hy5JGZnrNSpOPp5xvJuMAafs2eyvmhJm
/// Ev9SN/Pf2VYa1z6FEnBaLOVD6hf6YQIsPQJAX/CZPoW6dzwgvimo1/GcY6eleiWE
/// qygqjWhsh71e/3bz7yuEAnj5yE3t7Zshcp+dXR3xxGo0eSuLfLFxHgGxwQJAAxf8
/// 9DzQ5NkPkTCJi0sqbl8/03IUKTgT6hcbpWdDXa7m8J3wRr3o5nUB+TPQ5nzAbthM
/// zWX931YQeACcwhxvHQJBAN5mTzzJD4w4Ma6YTaNHyXakdYfyAWrOkPIWZxfhMfXe
/// DrlNdiysTI4Dd1dLeErVpjsckAaOW/JDG5PCSwkaMxk=
/// -----END RSA PRIVATE KEY-----
/// ",
///     });
///
///     var defaultListenerAdditionalCertificateAttachment = new AliCloud.Nlb.ListenerAdditionalCertificateAttachment("default", new()
///     {
///         CertificateId = ssl.Id,
///         ListenerId = createListener.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := nlb.GetZones(ctx, &nlb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVpc, err := vpc.NewNetwork(ctx, "create_vpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVswJ, err := vpc.NewSwitch(ctx, "create_vsw_j", &vpc.SwitchArgs{
/// 			VpcId:     createVpc.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVswK, err := vpc.NewSwitch(ctx, "create_vsw_k", &vpc.SwitchArgs{
/// 			VpcId:     createVpc.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[1].Id),
/// 			CidrBlock: pulumi.String("172.16.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lb, err := nlb.NewLoadBalancer(ctx, "lb", &nlb.LoadBalancerArgs{
/// 			AddressIpVersion: pulumi.String("Ipv4"),
/// 			ZoneMappings: nlb.LoadBalancerZoneMappingArray{
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: createVswJ.ID(),
/// 					ZoneId:    createVswJ.ZoneId,
/// 				},
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: createVswK.ID(),
/// 					ZoneId:    createVswK.ZoneId,
/// 				},
/// 			},
/// 			LoadBalancerType: pulumi.String("Network"),
/// 			LoadBalancerName: pulumi.String(name),
/// 			VpcId:            createVpc.ID(),
/// 			AddressType:      pulumi.String("Internet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createSg, err := nlb.NewServerGroup(ctx, "create_sg", &nlb.ServerGroupArgs{
/// 			AddressIpVersion: pulumi.String("Ipv4"),
/// 			Scheduler:        pulumi.String("Wrr"),
/// 			HealthCheck:      &nlb.ServerGroupHealthCheckArgs{},
/// 			ServerGroupType:  pulumi.String("Instance"),
/// 			VpcId:            createVpc.ID(),
/// 			Protocol:         pulumi.String("TCPSSL"),
/// 			ServerGroupName:  pulumi.String(name),
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
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: "-",
/// 			Input: []interface{}{
/// 				name,
/// 				defaultInteger.Result,
/// 				0,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ssl0, err := cas.NewServiceCertificate(ctx, "ssl0", &cas.ServiceCertificateArgs{
/// 			Cert: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDhDCCAmwCCQCwJW4JChLBqTANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMC
/// Q04xEDAOBgNVBAgMB0JlaWppbmcxEDAOBgNVBAcMB0JlaWppbmcxDDAKBgNVBAoM
/// A0FsaTEPMA0GA1UECwwGQWxpeXVuMRIwEAYDVQQDDAlUZXJyYWZvcm0xHTAbBgkq
/// hkiG9w0BCQEWDjEyM0BhbGl5dW0uY29tMB4XDTI0MTIyNTA3MjQ0OFoXDTI3MTIy
/// NTA3MjQ0OFowgYMxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlqaW5nMRAwDgYD
/// VQQHDAdCZWlqaW5nMQwwCgYDVQQKDANBbGkxDzANBgNVBAsMBkFsaXl1bjESMBAG
/// A1UEAwwJVGVycmFmb3JtMR0wGwYJKoZIhvcNAQkBFg4xMjNAYWxpeXVtLmNvbTCC
/// ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK4UufXydtJZeW6lX9VahVIk
/// ifblYCVkFcFoderF2FtD5AeMZJ+v+chHc7RiV+U7P3o0Fzk+cg7OL9dSEYBrwHK4
/// 9yCwU/Mv+I/KsS8GjrRMOPjbrYvI0GjheEPJcILbt29tygrxX2PwV6FqWNknbGpk
/// Ej8L9zTL977IHBmgw8A2AeKlqV64s8ydAgGbWO3NTK64OlEJJNR+J+75uYskNT3s
/// 8DqaQV/IWlGAiUmGVeorWkrAWCfx2zSwI9jU8pNHtSF7PyxlbRy1ir2Lv1WnQKHf
/// Bnhr/wXwKOL5IJRVZ144Z9TdcoPo4GbFmYMSTwYFIbjYZ3yxoygeXMk0UXPZxVsC
/// AwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVPA+Q0/5T6VzVw+MFXjCxXH1mWgd767w
/// YWX4tvdGsTDkK6/ESm8m9GDp5F3p7Degk0isr9XkyzkWo/nPEPWQOeYR0kNTvpwY
/// mKz9/aJwxalHS6O/8K2Ed6pZcXW0SUfjdH0/9YHw+vu4i2cQGTICzrKuEvyck40y
/// fQocvFyw6O7W+tewLA4ntTuC6HhEQbC0p7zxGc3LSuayBgJrJiOAnGvFu+/OFQi+
/// zEXi1xt8uQR6q5DQDsfqNCxpRKsCmU+POzNg2Y31GDMv4ZPerou5jXa1gh8/TVBT
/// IX3OTy5aL4Ue8nBip3bVw+V/9L9xhmXbex6IMwwvrWI4OfMt6ECifQ==
/// -----END CERTIFICATE-----
/// `),
/// 			CertificateName: pulumi.String(invokeJoin.Result),
/// 			Key: pulumi.String(`-----BEGIN RSA PRIVATE KEY-----
/// MIIEogIBAAKCAQEArhS59fJ20ll5bqVf1VqFUiSJ9uVgJWQVwWh16sXYW0PkB4xk
/// n6/5yEdztGJX5Ts/ejQXOT5yDs4v11IRgGvAcrj3ILBT8y/4j8qxLwaOtEw4+Nut
/// i8jQaOF4Q8lwgtu3b23KCvFfY/BXoWpY2SdsamQSPwv3NMv3vsgcGaDDwDYB4qWp
/// XrizzJ0CAZtY7c1Mrrg6UQkk1H4n7vm5iyQ1PezwOppBX8haUYCJSYZV6itaSsBY
/// J/HbNLAj2NTyk0e1IXs/LGVtHLWKvYu/VadAod8GeGv/BfAo4vkglFVnXjhn1N1y
/// g+jgZsWZgxJPBgUhuNhnfLGjKB5cyTRRc9nFWwIDAQABAoIBAC0D2Q6bc1RzpK4S
/// /5QZQ055el+o8tLYbbPEwnFCVe9LwASfrkmI5OuAZpAnuhjh2ElOfQ7lcfMYKFDi
/// vPnbYzmHUQhX8G17YygzvtutM2u2JilcDSWPeS0V2NaWmYyNKoMa/dsUjZk3RkHM
/// UUteIW/ljr5U5sj1UYw5DOMnqlbicy2cPPY4g1QKGW5t3p5Lxw5ojgqynzi8EKMq
/// j0apEoTXxmciOrwwiP2ynRTEN77+FUZkTvmxmSPoIfNTycDPRr4aUwVHV2d5FHPn
/// d1MdjSoUPbHdOLfynwXqTz9OlvMSUDrBvs6k5ripGY9qvh9PrOdj7zLXVRQXUuOR
/// YwoVHKECgYEA1NzNGifjW5cdcbkzc86QA9TM7yAyBmgnopzlm+dFIhxtJmydxN4V
/// 820x1Lkfe2vLCyYQ6fcEKAtjC9qdw+E2uzHAbtvnR4JseF3z1D82xw3MgGT9l3zc
/// mMrgKmdCGGLWi6hboylX+2GBMVl2R0aRZrZje67jZcDXd06mlvW257ECgYEA0Vv1
/// X3Ubn8XA3AA1ybem8fWNwEXfcYP1lJq0cX1gUXlpQvxWN61//aFZUCJZw5cEPArQ
/// rEqhT81VCqXGO/by6D3fJD+4P8D6v6szJK2AGvXkZMfnJwAbHcOyGlxMin1CTJss
/// ZID0XI9xmbedm7Wi40+qXz8q4rs25kft9YjfzMsCgYBSPfE8vtaYJ52nt7+Kae+4
/// mzqG1XCeixVtPaN1BfjvAf6mDucyDgB7KeBL6S6ht/ceGpoEW30On7+n79JuwRAt
/// aT6JVotYVKrmIp63jajzZYByxxI3unVcz12m5HhkBaQRF344XxvwMy8ASyloxnod
/// LjDns52GTeix3wB8aPk/MQKBgGOQRwXpjISUKB64HtxacZN6ArqgwB2c8uqEFDIw
/// vOCiS7Pmix4ZbdfxpqbcXzIMHKBtSEXXjBWGgd35bmfQDj7yRa9Yekgff2Ati7ny
/// pQytSbu/8abzfvHNwmKU6HWoEiKaXSdCyHNIaG8BCnwlilxt44k+YifHftlO9dSi
/// DkS3AoGAYmF++8uEvQot5Yma4GraY+7ZyfWNLwClsOsrN2g19Vycg16fJk0olwDx
/// 2kRWKqNn99HJJwiLie1nvsDRJLbmzmI91Pttpu/EYFDJ8OYQOr1OhhPwwTygf+7S
/// 1o2RTXu3gKNG6fxOtHFatws3IzvovOASYyJR5XP2sIJURLOrSN0=
/// -----END RSA PRIVATE KEY-----
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createListener, err := nlb.NewListener(ctx, "create_listener", &nlb.ListenerArgs{
/// 			ListenerPort:     pulumi.Int(443),
/// 			ServerGroupId:    createSg.ID(),
/// 			LoadBalancerId:   lb.ID(),
/// 			ListenerProtocol: pulumi.String("TCPSSL"),
/// 			CertificateIds: pulumi.StringArray{
/// 				ssl0.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("%v-cn-hangzhou", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			CaCertificateIds: pulumi.StringArray{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin1, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: "-",
/// 			Input: []interface{}{
/// 				name,
/// 				defaultInteger.Result,
/// 				1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ssl, err := cas.NewServiceCertificate(ctx, "ssl", &cas.ServiceCertificateArgs{
/// 			Cert: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDRjCCAq+gAwIBAgIJAJn3ox4K13PoMA0GCSqGSIb3DQEBBQUAMHYxCzAJBgNV
/// BAYTAkNOMQswCQYDVQQIEwJCSjELMAkGA1UEBxMCQkoxDDAKBgNVBAoTA0FMSTEP
/// MA0GA1UECxMGQUxJWVVOMQ0wCwYDVQQDEwR0ZXN0MR8wHQYJKoZIhvcNAQkBFhB0
/// ZXN0QGhvdG1haWwuY29tMB4XDTE0MTEyNDA2MDQyNVoXDTI0MTEyMTA2MDQyNVow
/// djELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAkJKMQswCQYDVQQHEwJCSjEMMAoGA1UE
/// ChMDQUxJMQ8wDQYDVQQLEwZBTElZVU4xDTALBgNVBAMTBHRlc3QxHzAdBgkqhkiG
/// 9w0BCQEWEHRlc3RAaG90bWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJ
/// AoGBAM7SS3e9+Nj0HKAsRuIDNSsS3UK6b+62YQb2uuhKrp1HMrOx61WSDR2qkAnB
/// coG00Uz38EE+9DLYNUVQBK7aSgLP5M1Ak4wr4GqGyCgjejzzh3DshUzLCCy2rook
/// KOyRTlPX+Q5l7rE1fcSNzgepcae5i2sE1XXXzLRIDIvQxcspAgMBAAGjgdswgdgw
/// HQYDVR0OBBYEFBdy+OuMsvbkV7R14f0OyoLoh2z4MIGoBgNVHSMEgaAwgZ2AFBdy
/// +OuMsvbkV7R14f0OyoLoh2z4oXqkeDB2MQswCQYDVQQGEwJDTjELMAkGA1UECBMC
/// QkoxCzAJBgNVBAcTAkJKMQwwCgYDVQQKEwNBTEkxDzANBgNVBAsTBkFMSVlVTjEN
/// MAsGA1UEAxMEdGVzdDEfMB0GCSqGSIb3DQEJARYQdGVzdEBob3RtYWlsLmNvbYIJ
/// AJn3ox4K13PoMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAY7KOsnyT
/// cQzfhiiG7ASjiPakw5wXoycHt5GCvLG5htp2TKVzgv9QTliA3gtfv6oV4zRZx7X1
/// Ofi6hVgErtHaXJheuPVeW6eAW8mHBoEfvDAfU3y9waYrtUevSl07643bzKL6v+Qd
/// DUBTxOAvSYfXTtI90EAxEG/bJJyOm5LqoiA=
/// -----END CERTIFICATE-----
/// `),
/// 			CertificateName: pulumi.String(invokeJoin1.Result),
/// 			Key: pulumi.String(`-----BEGIN RSA PRIVATE KEY-----
/// MIICXAIBAAKBgQDO0kt3vfjY9BygLEbiAzUrEt1Cum/utmEG9rroSq6dRzKzsetV
/// kg0dqpAJwXKBtNFM9/BBPvQy2DVFUASu2koCz+TNQJOMK+BqhsgoI3o884dw7IVM
/// ywgstq6KJCjskU5T1/kOZe6xNX3Ejc4HqXGnuYtrBNV118y0SAyL0MXLKQIDAQAB
/// AoGAfe3NxbsGKhN42o4bGsKZPQDfeCHMxayGp5bTd10BtQIE/ST4BcJH+ihAS7Bd
/// 6FwQlKzivNd4GP1MckemklCXfsVckdL94e8ZbJl23GdWul3v8V+KndJHqv5zVJmP
/// hwWoKimwIBTb2s0ctVryr2f18N4hhyFw1yGp0VxclGHkjgECQQD9CvllsnOwHpP4
/// MdrDHbdb29QrobKyKW8pPcDd+sth+kP6Y8MnCVuAKXCKj5FeIsgVtfluPOsZjPzz
/// 71QQWS1dAkEA0T0KXO8gaBQwJhIoo/w6hy5JGZnrNSpOPp5xvJuMAafs2eyvmhJm
/// Ev9SN/Pf2VYa1z6FEnBaLOVD6hf6YQIsPQJAX/CZPoW6dzwgvimo1/GcY6eleiWE
/// qygqjWhsh71e/3bz7yuEAnj5yE3t7Zshcp+dXR3xxGo0eSuLfLFxHgGxwQJAAxf8
/// 9DzQ5NkPkTCJi0sqbl8/03IUKTgT6hcbpWdDXa7m8J3wRr3o5nUB+TPQ5nzAbthM
/// zWX931YQeACcwhxvHQJBAN5mTzzJD4w4Ma6YTaNHyXakdYfyAWrOkPIWZxfhMfXe
/// DrlNdiysTI4Dd1dLeErVpjsckAaOW/JDG5PCSwkaMxk=
/// -----END RSA PRIVATE KEY-----
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewListenerAdditionalCertificateAttachment(ctx, "default", &nlb.ListenerAdditionalCertificateAttachmentArgs{
/// 			CertificateId: ssl.ID(),
/// 			ListenerId:    createListener.ID(),
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nlb.LoadBalancer;
/// import com.pulumi.alicloud.nlb.LoadBalancerArgs;
/// import com.pulumi.alicloud.nlb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.nlb.ServerGroup;
/// import com.pulumi.alicloud.nlb.ServerGroupArgs;
/// import com.pulumi.alicloud.nlb.inputs.ServerGroupHealthCheckArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cas.ServiceCertificate;
/// import com.pulumi.alicloud.cas.ServiceCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.alicloud.nlb.Listener;
/// import com.pulumi.alicloud.nlb.ListenerArgs;
/// import com.pulumi.alicloud.nlb.ListenerAdditionalCertificateAttachment;
/// import com.pulumi.alicloud.nlb.ListenerAdditionalCertificateAttachmentArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = NlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var createVpc = new Network("createVpc", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var createVswJ = new Switch("createVswJ", SwitchArgs.builder()
///             .vpcId(createVpc.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var createVswK = new Switch("createVswK", SwitchArgs.builder()
///             .vpcId(createVpc.id())
///             .zoneId(default_.zones()[1].id())
///             .cidrBlock("172.16.2.0/24")
///             .build());
///
///         var lb = new LoadBalancer("lb", LoadBalancerArgs.builder()
///             .addressIpVersion("Ipv4")
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(createVswJ.id())
///                     .zoneId(createVswJ.zoneId())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(createVswK.id())
///                     .zoneId(createVswK.zoneId())
///                     .build())
///             .loadBalancerType("Network")
///             .loadBalancerName(name)
///             .vpcId(createVpc.id())
///             .addressType("Internet")
///             .build());
///
///         var createSg = new ServerGroup("createSg", ServerGroupArgs.builder()
///             .addressIpVersion("Ipv4")
///             .scheduler("Wrr")
///             .healthCheck(ServerGroupHealthCheckArgs.builder()
///                 .build())
///             .serverGroupType("Instance")
///             .vpcId(createVpc.id())
///             .protocol("TCPSSL")
///             .serverGroupName(name)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var ssl0 = new ServiceCertificate("ssl0", ServiceCertificateArgs.builder()
///             .cert("""
/// -----BEGIN CERTIFICATE-----
/// MIIDhDCCAmwCCQCwJW4JChLBqTANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMC
/// Q04xEDAOBgNVBAgMB0JlaWppbmcxEDAOBgNVBAcMB0JlaWppbmcxDDAKBgNVBAoM
/// A0FsaTEPMA0GA1UECwwGQWxpeXVuMRIwEAYDVQQDDAlUZXJyYWZvcm0xHTAbBgkq
/// hkiG9w0BCQEWDjEyM0BhbGl5dW0uY29tMB4XDTI0MTIyNTA3MjQ0OFoXDTI3MTIy
/// NTA3MjQ0OFowgYMxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlqaW5nMRAwDgYD
/// VQQHDAdCZWlqaW5nMQwwCgYDVQQKDANBbGkxDzANBgNVBAsMBkFsaXl1bjESMBAG
/// A1UEAwwJVGVycmFmb3JtMR0wGwYJKoZIhvcNAQkBFg4xMjNAYWxpeXVtLmNvbTCC
/// ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK4UufXydtJZeW6lX9VahVIk
/// ifblYCVkFcFoderF2FtD5AeMZJ+v+chHc7RiV+U7P3o0Fzk+cg7OL9dSEYBrwHK4
/// 9yCwU/Mv+I/KsS8GjrRMOPjbrYvI0GjheEPJcILbt29tygrxX2PwV6FqWNknbGpk
/// Ej8L9zTL977IHBmgw8A2AeKlqV64s8ydAgGbWO3NTK64OlEJJNR+J+75uYskNT3s
/// 8DqaQV/IWlGAiUmGVeorWkrAWCfx2zSwI9jU8pNHtSF7PyxlbRy1ir2Lv1WnQKHf
/// Bnhr/wXwKOL5IJRVZ144Z9TdcoPo4GbFmYMSTwYFIbjYZ3yxoygeXMk0UXPZxVsC
/// AwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVPA+Q0/5T6VzVw+MFXjCxXH1mWgd767w
/// YWX4tvdGsTDkK6/ESm8m9GDp5F3p7Degk0isr9XkyzkWo/nPEPWQOeYR0kNTvpwY
/// mKz9/aJwxalHS6O/8K2Ed6pZcXW0SUfjdH0/9YHw+vu4i2cQGTICzrKuEvyck40y
/// fQocvFyw6O7W+tewLA4ntTuC6HhEQbC0p7zxGc3LSuayBgJrJiOAnGvFu+/OFQi+
/// zEXi1xt8uQR6q5DQDsfqNCxpRKsCmU+POzNg2Y31GDMv4ZPerou5jXa1gh8/TVBT
/// IX3OTy5aL4Ue8nBip3bVw+V/9L9xhmXbex6IMwwvrWI4OfMt6ECifQ==
/// -----END CERTIFICATE-----
///             """)
///             .certificateName(StdFunctions.join(JoinArgs.builder()
///                 .separator("-")
///                 .input(
///                     name,
///                     defaultInteger.result(),
///                     0)
///                 .build()).result())
///             .key("""
/// -----BEGIN RSA PRIVATE KEY-----
/// MIIEogIBAAKCAQEArhS59fJ20ll5bqVf1VqFUiSJ9uVgJWQVwWh16sXYW0PkB4xk
/// n6/5yEdztGJX5Ts/ejQXOT5yDs4v11IRgGvAcrj3ILBT8y/4j8qxLwaOtEw4+Nut
/// i8jQaOF4Q8lwgtu3b23KCvFfY/BXoWpY2SdsamQSPwv3NMv3vsgcGaDDwDYB4qWp
/// XrizzJ0CAZtY7c1Mrrg6UQkk1H4n7vm5iyQ1PezwOppBX8haUYCJSYZV6itaSsBY
/// J/HbNLAj2NTyk0e1IXs/LGVtHLWKvYu/VadAod8GeGv/BfAo4vkglFVnXjhn1N1y
/// g+jgZsWZgxJPBgUhuNhnfLGjKB5cyTRRc9nFWwIDAQABAoIBAC0D2Q6bc1RzpK4S
/// /5QZQ055el+o8tLYbbPEwnFCVe9LwASfrkmI5OuAZpAnuhjh2ElOfQ7lcfMYKFDi
/// vPnbYzmHUQhX8G17YygzvtutM2u2JilcDSWPeS0V2NaWmYyNKoMa/dsUjZk3RkHM
/// UUteIW/ljr5U5sj1UYw5DOMnqlbicy2cPPY4g1QKGW5t3p5Lxw5ojgqynzi8EKMq
/// j0apEoTXxmciOrwwiP2ynRTEN77+FUZkTvmxmSPoIfNTycDPRr4aUwVHV2d5FHPn
/// d1MdjSoUPbHdOLfynwXqTz9OlvMSUDrBvs6k5ripGY9qvh9PrOdj7zLXVRQXUuOR
/// YwoVHKECgYEA1NzNGifjW5cdcbkzc86QA9TM7yAyBmgnopzlm+dFIhxtJmydxN4V
/// 820x1Lkfe2vLCyYQ6fcEKAtjC9qdw+E2uzHAbtvnR4JseF3z1D82xw3MgGT9l3zc
/// mMrgKmdCGGLWi6hboylX+2GBMVl2R0aRZrZje67jZcDXd06mlvW257ECgYEA0Vv1
/// X3Ubn8XA3AA1ybem8fWNwEXfcYP1lJq0cX1gUXlpQvxWN61//aFZUCJZw5cEPArQ
/// rEqhT81VCqXGO/by6D3fJD+4P8D6v6szJK2AGvXkZMfnJwAbHcOyGlxMin1CTJss
/// ZID0XI9xmbedm7Wi40+qXz8q4rs25kft9YjfzMsCgYBSPfE8vtaYJ52nt7+Kae+4
/// mzqG1XCeixVtPaN1BfjvAf6mDucyDgB7KeBL6S6ht/ceGpoEW30On7+n79JuwRAt
/// aT6JVotYVKrmIp63jajzZYByxxI3unVcz12m5HhkBaQRF344XxvwMy8ASyloxnod
/// LjDns52GTeix3wB8aPk/MQKBgGOQRwXpjISUKB64HtxacZN6ArqgwB2c8uqEFDIw
/// vOCiS7Pmix4ZbdfxpqbcXzIMHKBtSEXXjBWGgd35bmfQDj7yRa9Yekgff2Ati7ny
/// pQytSbu/8abzfvHNwmKU6HWoEiKaXSdCyHNIaG8BCnwlilxt44k+YifHftlO9dSi
/// DkS3AoGAYmF++8uEvQot5Yma4GraY+7ZyfWNLwClsOsrN2g19Vycg16fJk0olwDx
/// 2kRWKqNn99HJJwiLie1nvsDRJLbmzmI91Pttpu/EYFDJ8OYQOr1OhhPwwTygf+7S
/// 1o2RTXu3gKNG6fxOtHFatws3IzvovOASYyJR5XP2sIJURLOrSN0=
/// -----END RSA PRIVATE KEY-----
///             """)
///             .build());
///
///         var createListener = new Listener("createListener", ListenerArgs.builder()
///             .listenerPort(443)
///             .serverGroupId(createSg.id())
///             .loadBalancerId(lb.id())
///             .listenerProtocol("TCPSSL")
///             .certificateIds(ssl0.id().applyValue(_id -> String.format("%s-cn-hangzhou", _id)))
///             .caCertificateIds()
///             .build());
///
///         var ssl = new ServiceCertificate("ssl", ServiceCertificateArgs.builder()
///             .cert("""
/// -----BEGIN CERTIFICATE-----
/// MIIDRjCCAq+gAwIBAgIJAJn3ox4K13PoMA0GCSqGSIb3DQEBBQUAMHYxCzAJBgNV
/// BAYTAkNOMQswCQYDVQQIEwJCSjELMAkGA1UEBxMCQkoxDDAKBgNVBAoTA0FMSTEP
/// MA0GA1UECxMGQUxJWVVOMQ0wCwYDVQQDEwR0ZXN0MR8wHQYJKoZIhvcNAQkBFhB0
/// ZXN0QGhvdG1haWwuY29tMB4XDTE0MTEyNDA2MDQyNVoXDTI0MTEyMTA2MDQyNVow
/// djELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAkJKMQswCQYDVQQHEwJCSjEMMAoGA1UE
/// ChMDQUxJMQ8wDQYDVQQLEwZBTElZVU4xDTALBgNVBAMTBHRlc3QxHzAdBgkqhkiG
/// 9w0BCQEWEHRlc3RAaG90bWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJ
/// AoGBAM7SS3e9+Nj0HKAsRuIDNSsS3UK6b+62YQb2uuhKrp1HMrOx61WSDR2qkAnB
/// coG00Uz38EE+9DLYNUVQBK7aSgLP5M1Ak4wr4GqGyCgjejzzh3DshUzLCCy2rook
/// KOyRTlPX+Q5l7rE1fcSNzgepcae5i2sE1XXXzLRIDIvQxcspAgMBAAGjgdswgdgw
/// HQYDVR0OBBYEFBdy+OuMsvbkV7R14f0OyoLoh2z4MIGoBgNVHSMEgaAwgZ2AFBdy
/// +OuMsvbkV7R14f0OyoLoh2z4oXqkeDB2MQswCQYDVQQGEwJDTjELMAkGA1UECBMC
/// QkoxCzAJBgNVBAcTAkJKMQwwCgYDVQQKEwNBTEkxDzANBgNVBAsTBkFMSVlVTjEN
/// MAsGA1UEAxMEdGVzdDEfMB0GCSqGSIb3DQEJARYQdGVzdEBob3RtYWlsLmNvbYIJ
/// AJn3ox4K13PoMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAY7KOsnyT
/// cQzfhiiG7ASjiPakw5wXoycHt5GCvLG5htp2TKVzgv9QTliA3gtfv6oV4zRZx7X1
/// Ofi6hVgErtHaXJheuPVeW6eAW8mHBoEfvDAfU3y9waYrtUevSl07643bzKL6v+Qd
/// DUBTxOAvSYfXTtI90EAxEG/bJJyOm5LqoiA=
/// -----END CERTIFICATE-----
///             """)
///             .certificateName(StdFunctions.join(JoinArgs.builder()
///                 .separator("-")
///                 .input(
///                     name,
///                     defaultInteger.result(),
///                     1)
///                 .build()).result())
///             .key("""
/// -----BEGIN RSA PRIVATE KEY-----
/// MIICXAIBAAKBgQDO0kt3vfjY9BygLEbiAzUrEt1Cum/utmEG9rroSq6dRzKzsetV
/// kg0dqpAJwXKBtNFM9/BBPvQy2DVFUASu2koCz+TNQJOMK+BqhsgoI3o884dw7IVM
/// ywgstq6KJCjskU5T1/kOZe6xNX3Ejc4HqXGnuYtrBNV118y0SAyL0MXLKQIDAQAB
/// AoGAfe3NxbsGKhN42o4bGsKZPQDfeCHMxayGp5bTd10BtQIE/ST4BcJH+ihAS7Bd
/// 6FwQlKzivNd4GP1MckemklCXfsVckdL94e8ZbJl23GdWul3v8V+KndJHqv5zVJmP
/// hwWoKimwIBTb2s0ctVryr2f18N4hhyFw1yGp0VxclGHkjgECQQD9CvllsnOwHpP4
/// MdrDHbdb29QrobKyKW8pPcDd+sth+kP6Y8MnCVuAKXCKj5FeIsgVtfluPOsZjPzz
/// 71QQWS1dAkEA0T0KXO8gaBQwJhIoo/w6hy5JGZnrNSpOPp5xvJuMAafs2eyvmhJm
/// Ev9SN/Pf2VYa1z6FEnBaLOVD6hf6YQIsPQJAX/CZPoW6dzwgvimo1/GcY6eleiWE
/// qygqjWhsh71e/3bz7yuEAnj5yE3t7Zshcp+dXR3xxGo0eSuLfLFxHgGxwQJAAxf8
/// 9DzQ5NkPkTCJi0sqbl8/03IUKTgT6hcbpWdDXa7m8J3wRr3o5nUB+TPQ5nzAbthM
/// zWX931YQeACcwhxvHQJBAN5mTzzJD4w4Ma6YTaNHyXakdYfyAWrOkPIWZxfhMfXe
/// DrlNdiysTI4Dd1dLeErVpjsckAaOW/JDG5PCSwkaMxk=
/// -----END RSA PRIVATE KEY-----
///             """)
///             .build());
///
///         var defaultListenerAdditionalCertificateAttachment = new ListenerAdditionalCertificateAttachment("defaultListenerAdditionalCertificateAttachment", ListenerAdditionalCertificateAttachmentArgs.builder()
///             .certificateId(ssl.id())
///             .listenerId(createListener.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   createVpc:
///     type: alicloud:vpc:Network
///     name: create_vpc
///     properties:
///       cidrBlock: 172.16.0.0/12
///   createVswJ:
///     type: alicloud:vpc:Switch
///     name: create_vsw_j
///     properties:
///       vpcId: ${createVpc.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 172.16.1.0/24
///   createVswK:
///     type: alicloud:vpc:Switch
///     name: create_vsw_k
///     properties:
///       vpcId: ${createVpc.id}
///       zoneId: ${default.zones[1].id}
///       cidrBlock: 172.16.2.0/24
///   lb:
///     type: alicloud:nlb:LoadBalancer
///     properties:
///       addressIpVersion: Ipv4
///       zoneMappings:
///         - vswitchId: ${createVswJ.id}
///           zoneId: ${createVswJ.zoneId}
///         - vswitchId: ${createVswK.id}
///           zoneId: ${createVswK.zoneId}
///       loadBalancerType: Network
///       loadBalancerName: ${name}
///       vpcId: ${createVpc.id}
///       addressType: Internet
///   createSg:
///     type: alicloud:nlb:ServerGroup
///     name: create_sg
///     properties:
///       addressIpVersion: Ipv4
///       scheduler: Wrr
///       healthCheck: {}
///       serverGroupType: Instance
///       vpcId: ${createVpc.id}
///       protocol: TCPSSL
///       serverGroupName: ${name}
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   ssl0:
///     type: alicloud:cas:ServiceCertificate
///     properties:
///       cert: |
///         -----BEGIN CERTIFICATE-----
///         MIIDhDCCAmwCCQCwJW4JChLBqTANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMC
///         Q04xEDAOBgNVBAgMB0JlaWppbmcxEDAOBgNVBAcMB0JlaWppbmcxDDAKBgNVBAoM
///         A0FsaTEPMA0GA1UECwwGQWxpeXVuMRIwEAYDVQQDDAlUZXJyYWZvcm0xHTAbBgkq
///         hkiG9w0BCQEWDjEyM0BhbGl5dW0uY29tMB4XDTI0MTIyNTA3MjQ0OFoXDTI3MTIy
///         NTA3MjQ0OFowgYMxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlqaW5nMRAwDgYD
///         VQQHDAdCZWlqaW5nMQwwCgYDVQQKDANBbGkxDzANBgNVBAsMBkFsaXl1bjESMBAG
///         A1UEAwwJVGVycmFmb3JtMR0wGwYJKoZIhvcNAQkBFg4xMjNAYWxpeXVtLmNvbTCC
///         ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK4UufXydtJZeW6lX9VahVIk
///         ifblYCVkFcFoderF2FtD5AeMZJ+v+chHc7RiV+U7P3o0Fzk+cg7OL9dSEYBrwHK4
///         9yCwU/Mv+I/KsS8GjrRMOPjbrYvI0GjheEPJcILbt29tygrxX2PwV6FqWNknbGpk
///         Ej8L9zTL977IHBmgw8A2AeKlqV64s8ydAgGbWO3NTK64OlEJJNR+J+75uYskNT3s
///         8DqaQV/IWlGAiUmGVeorWkrAWCfx2zSwI9jU8pNHtSF7PyxlbRy1ir2Lv1WnQKHf
///         Bnhr/wXwKOL5IJRVZ144Z9TdcoPo4GbFmYMSTwYFIbjYZ3yxoygeXMk0UXPZxVsC
///         AwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVPA+Q0/5T6VzVw+MFXjCxXH1mWgd767w
///         YWX4tvdGsTDkK6/ESm8m9GDp5F3p7Degk0isr9XkyzkWo/nPEPWQOeYR0kNTvpwY
///         mKz9/aJwxalHS6O/8K2Ed6pZcXW0SUfjdH0/9YHw+vu4i2cQGTICzrKuEvyck40y
///         fQocvFyw6O7W+tewLA4ntTuC6HhEQbC0p7zxGc3LSuayBgJrJiOAnGvFu+/OFQi+
///         zEXi1xt8uQR6q5DQDsfqNCxpRKsCmU+POzNg2Y31GDMv4ZPerou5jXa1gh8/TVBT
///         IX3OTy5aL4Ue8nBip3bVw+V/9L9xhmXbex6IMwwvrWI4OfMt6ECifQ==
///         -----END CERTIFICATE-----
///       certificateName:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: '-'
///             input:
///               - ${name}
///               - ${defaultInteger.result}
///               - 0
///           return: result
///       key: |
///         -----BEGIN RSA PRIVATE KEY-----
///         MIIEogIBAAKCAQEArhS59fJ20ll5bqVf1VqFUiSJ9uVgJWQVwWh16sXYW0PkB4xk
///         n6/5yEdztGJX5Ts/ejQXOT5yDs4v11IRgGvAcrj3ILBT8y/4j8qxLwaOtEw4+Nut
///         i8jQaOF4Q8lwgtu3b23KCvFfY/BXoWpY2SdsamQSPwv3NMv3vsgcGaDDwDYB4qWp
///         XrizzJ0CAZtY7c1Mrrg6UQkk1H4n7vm5iyQ1PezwOppBX8haUYCJSYZV6itaSsBY
///         J/HbNLAj2NTyk0e1IXs/LGVtHLWKvYu/VadAod8GeGv/BfAo4vkglFVnXjhn1N1y
///         g+jgZsWZgxJPBgUhuNhnfLGjKB5cyTRRc9nFWwIDAQABAoIBAC0D2Q6bc1RzpK4S
///         /5QZQ055el+o8tLYbbPEwnFCVe9LwASfrkmI5OuAZpAnuhjh2ElOfQ7lcfMYKFDi
///         vPnbYzmHUQhX8G17YygzvtutM2u2JilcDSWPeS0V2NaWmYyNKoMa/dsUjZk3RkHM
///         UUteIW/ljr5U5sj1UYw5DOMnqlbicy2cPPY4g1QKGW5t3p5Lxw5ojgqynzi8EKMq
///         j0apEoTXxmciOrwwiP2ynRTEN77+FUZkTvmxmSPoIfNTycDPRr4aUwVHV2d5FHPn
///         d1MdjSoUPbHdOLfynwXqTz9OlvMSUDrBvs6k5ripGY9qvh9PrOdj7zLXVRQXUuOR
///         YwoVHKECgYEA1NzNGifjW5cdcbkzc86QA9TM7yAyBmgnopzlm+dFIhxtJmydxN4V
///         820x1Lkfe2vLCyYQ6fcEKAtjC9qdw+E2uzHAbtvnR4JseF3z1D82xw3MgGT9l3zc
///         mMrgKmdCGGLWi6hboylX+2GBMVl2R0aRZrZje67jZcDXd06mlvW257ECgYEA0Vv1
///         X3Ubn8XA3AA1ybem8fWNwEXfcYP1lJq0cX1gUXlpQvxWN61//aFZUCJZw5cEPArQ
///         rEqhT81VCqXGO/by6D3fJD+4P8D6v6szJK2AGvXkZMfnJwAbHcOyGlxMin1CTJss
///         ZID0XI9xmbedm7Wi40+qXz8q4rs25kft9YjfzMsCgYBSPfE8vtaYJ52nt7+Kae+4
///         mzqG1XCeixVtPaN1BfjvAf6mDucyDgB7KeBL6S6ht/ceGpoEW30On7+n79JuwRAt
///         aT6JVotYVKrmIp63jajzZYByxxI3unVcz12m5HhkBaQRF344XxvwMy8ASyloxnod
///         LjDns52GTeix3wB8aPk/MQKBgGOQRwXpjISUKB64HtxacZN6ArqgwB2c8uqEFDIw
///         vOCiS7Pmix4ZbdfxpqbcXzIMHKBtSEXXjBWGgd35bmfQDj7yRa9Yekgff2Ati7ny
///         pQytSbu/8abzfvHNwmKU6HWoEiKaXSdCyHNIaG8BCnwlilxt44k+YifHftlO9dSi
///         DkS3AoGAYmF++8uEvQot5Yma4GraY+7ZyfWNLwClsOsrN2g19Vycg16fJk0olwDx
///         2kRWKqNn99HJJwiLie1nvsDRJLbmzmI91Pttpu/EYFDJ8OYQOr1OhhPwwTygf+7S
///         1o2RTXu3gKNG6fxOtHFatws3IzvovOASYyJR5XP2sIJURLOrSN0=
///         -----END RSA PRIVATE KEY-----
///   createListener:
///     type: alicloud:nlb:Listener
///     name: create_listener
///     properties:
///       listenerPort: '443'
///       serverGroupId: ${createSg.id}
///       loadBalancerId: ${lb.id}
///       listenerProtocol: TCPSSL
///       certificateIds:
///         - ${ssl0.id}-cn-hangzhou
///       caCertificateIds: []
///   ssl:
///     type: alicloud:cas:ServiceCertificate
///     properties:
///       cert: |
///         -----BEGIN CERTIFICATE-----
///         MIIDRjCCAq+gAwIBAgIJAJn3ox4K13PoMA0GCSqGSIb3DQEBBQUAMHYxCzAJBgNV
///         BAYTAkNOMQswCQYDVQQIEwJCSjELMAkGA1UEBxMCQkoxDDAKBgNVBAoTA0FMSTEP
///         MA0GA1UECxMGQUxJWVVOMQ0wCwYDVQQDEwR0ZXN0MR8wHQYJKoZIhvcNAQkBFhB0
///         ZXN0QGhvdG1haWwuY29tMB4XDTE0MTEyNDA2MDQyNVoXDTI0MTEyMTA2MDQyNVow
///         djELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAkJKMQswCQYDVQQHEwJCSjEMMAoGA1UE
///         ChMDQUxJMQ8wDQYDVQQLEwZBTElZVU4xDTALBgNVBAMTBHRlc3QxHzAdBgkqhkiG
///         9w0BCQEWEHRlc3RAaG90bWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJ
///         AoGBAM7SS3e9+Nj0HKAsRuIDNSsS3UK6b+62YQb2uuhKrp1HMrOx61WSDR2qkAnB
///         coG00Uz38EE+9DLYNUVQBK7aSgLP5M1Ak4wr4GqGyCgjejzzh3DshUzLCCy2rook
///         KOyRTlPX+Q5l7rE1fcSNzgepcae5i2sE1XXXzLRIDIvQxcspAgMBAAGjgdswgdgw
///         HQYDVR0OBBYEFBdy+OuMsvbkV7R14f0OyoLoh2z4MIGoBgNVHSMEgaAwgZ2AFBdy
///         +OuMsvbkV7R14f0OyoLoh2z4oXqkeDB2MQswCQYDVQQGEwJDTjELMAkGA1UECBMC
///         QkoxCzAJBgNVBAcTAkJKMQwwCgYDVQQKEwNBTEkxDzANBgNVBAsTBkFMSVlVTjEN
///         MAsGA1UEAxMEdGVzdDEfMB0GCSqGSIb3DQEJARYQdGVzdEBob3RtYWlsLmNvbYIJ
///         AJn3ox4K13PoMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAY7KOsnyT
///         cQzfhiiG7ASjiPakw5wXoycHt5GCvLG5htp2TKVzgv9QTliA3gtfv6oV4zRZx7X1
///         Ofi6hVgErtHaXJheuPVeW6eAW8mHBoEfvDAfU3y9waYrtUevSl07643bzKL6v+Qd
///         DUBTxOAvSYfXTtI90EAxEG/bJJyOm5LqoiA=
///         -----END CERTIFICATE-----
///       certificateName:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: '-'
///             input:
///               - ${name}
///               - ${defaultInteger.result}
///               - 1
///           return: result
///       key: |
///         -----BEGIN RSA PRIVATE KEY-----
///         MIICXAIBAAKBgQDO0kt3vfjY9BygLEbiAzUrEt1Cum/utmEG9rroSq6dRzKzsetV
///         kg0dqpAJwXKBtNFM9/BBPvQy2DVFUASu2koCz+TNQJOMK+BqhsgoI3o884dw7IVM
///         ywgstq6KJCjskU5T1/kOZe6xNX3Ejc4HqXGnuYtrBNV118y0SAyL0MXLKQIDAQAB
///         AoGAfe3NxbsGKhN42o4bGsKZPQDfeCHMxayGp5bTd10BtQIE/ST4BcJH+ihAS7Bd
///         6FwQlKzivNd4GP1MckemklCXfsVckdL94e8ZbJl23GdWul3v8V+KndJHqv5zVJmP
///         hwWoKimwIBTb2s0ctVryr2f18N4hhyFw1yGp0VxclGHkjgECQQD9CvllsnOwHpP4
///         MdrDHbdb29QrobKyKW8pPcDd+sth+kP6Y8MnCVuAKXCKj5FeIsgVtfluPOsZjPzz
///         71QQWS1dAkEA0T0KXO8gaBQwJhIoo/w6hy5JGZnrNSpOPp5xvJuMAafs2eyvmhJm
///         Ev9SN/Pf2VYa1z6FEnBaLOVD6hf6YQIsPQJAX/CZPoW6dzwgvimo1/GcY6eleiWE
///         qygqjWhsh71e/3bz7yuEAnj5yE3t7Zshcp+dXR3xxGo0eSuLfLFxHgGxwQJAAxf8
///         9DzQ5NkPkTCJi0sqbl8/03IUKTgT6hcbpWdDXa7m8J3wRr3o5nUB+TPQ5nzAbthM
///         zWX931YQeACcwhxvHQJBAN5mTzzJD4w4Ma6YTaNHyXakdYfyAWrOkPIWZxfhMfXe
///         DrlNdiysTI4Dd1dLeErVpjsckAaOW/JDG5PCSwkaMxk=
///         -----END RSA PRIVATE KEY-----
///   defaultListenerAdditionalCertificateAttachment:
///     type: alicloud:nlb:ListenerAdditionalCertificateAttachment
///     name: default
///     properties:
///       certificateId: ${ssl.id}
///       listenerId: ${createListener.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:nlb:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// NLB Listener Additional Certificate Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/listenerAdditionalCertificateAttachment:ListenerAdditionalCertificateAttachment example <listener_id>:<certificate_id>
/// ```
class ListenerAdditionalCertificateAttachment extends pulumi.CustomResource {
  /// The ID of additional certificates.
  late final pulumi.Output<String> certificateId;
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The listener ID. You must specify the ID of a listener that uses SSL over TCP.
  late final pulumi.Output<String> listenerId;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [ListenerAdditionalCertificateAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerAdditionalCertificateAttachment]. {@macro pulumi_nlb_listener_additional_certificate_attachment_listener_additional_certificate_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerAdditionalCertificateAttachment(
    String name, {
    ListenerAdditionalCertificateAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/listenerAdditionalCertificateAttachment:ListenerAdditionalCertificateAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateId = registerOutput<String>('certificateId');
    dryRun = registerOutput<bool?>('dryRun');
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
          'alicloud:nlb/listenerAdditionalCertificateAttachment:ListenerAdditionalCertificateAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateId = registerOutput<String>('certificateId');
    dryRun = registerOutput<bool?>('dryRun');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
  }
}
