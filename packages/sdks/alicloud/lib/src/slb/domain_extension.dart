import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_extension_args.dart';
import 'domain_extension_state.dart';

/// HTTPS listeners of guaranteed-performance SLB support configuring multiple certificates, allowing you to forward requests with different domain names to different backend servers.
/// Please refer to the [documentation](https://www.alibabacloud.com/help/doc-detail/85956.htm?spm=a2c63.p38356.b99.40.1c881563Co8p6w) for details.
///
/// > **NOTE:** Available in 1.60.0+
///
/// > **NOTE:** The instance with shared loadBalancerSpec doesn't support domainExtension.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const slbDomainExtensionName = config.get("slbDomainExtensionName") || "forDomainExtension";
/// const domainExtension = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const domainExtensionNetwork = new alicloud.vpc.Network("domain_extension", {vpcName: slbDomainExtensionName});
/// const domainExtensionSwitch = new alicloud.vpc.Switch("domain_extension", {
///     vpcId: domainExtensionNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: domainExtension.then(domainExtension => domainExtension.zones?.[0]?.id),
///     vswitchName: slbDomainExtensionName,
/// });
/// const instance = new alicloud.slb.ApplicationLoadBalancer("instance", {
///     loadBalancerName: slbDomainExtensionName,
///     addressType: "intranet",
///     loadBalancerSpec: "slb.s2.small",
///     vswitchId: domainExtensionSwitch.id,
/// });
/// const domainExtensionServerCertificate = new alicloud.slb.ServerCertificate("domain_extension", {
///     name: "tf-testAccSlbServerCertificate",
///     serverCertificate: `-----BEGIN CERTIFICATE-----
/// MIIDdjCCAl4CCQCcm+erkcKN7DANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJj
/// bjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcxDzANBgNVBAoMBmFsaXl1
/// bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0LmNvbTEaMBgGCSqGSIb3
/// DQEJARYLMTIzQDEyMy5jb20wHhcNMTkwNDI2MDM0ODAxWhcNMjQwNDI1MDM0ODAx
/// WjB9MQswCQYDVQQGEwJjbjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcx
/// DzANBgNVBAoMBmFsaXl1bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0
/// LmNvbTEaMBgGCSqGSIb3DQEJARYLMTIzQDEyMy5jb20wggEiMA0GCSqGSIb3DQEB
/// AQUAA4IBDwAwggEKAoIBAQDKMKF5qmN/uoMjdH3D8aPRcUOA0s8rZpYhG8zbkF1j
/// 8gHYoB/FDvM7G7dfVsyjbMwLOxKvAhWvHHSpEz/t7gB+QdwrAMiMJwGmtCnXrh2E
/// WiXgalMe1y4a/T5R7q+m4T1zFATf+kbnHWfkSGF4W7b6UBoaH+9StQ95CnqzNf/2
/// p/Of7+S0XzCxFXw8GIVzZk0xFe6lHJzaq06f3mvzrD+4rpO56tTUvrgTY/n61gsF
/// ZP7f0CJ2JQh6eNRFOEUSfxKu/Dy/+IsQxorCJY2Q59ZAf3rXrqDN104jw9PlwnLl
/// qfZz3RMODN6BWjxE8rvRtT0qMfuAfv1gjBdWZN0hUYBRAgMBAAEwDQYJKoZIhvcN
/// AQELBQADggEBAABzo82TxGp5poVkd5pLWj5ACgcBv8Cs6oH9D+4Jz9BmyuBUsQXh
/// 2aG0hQAe1mU61C9konsl/GTW8umJQ4M4lYEztXXwMf5PlBMGwebM0ZbSGg6jKtZg
/// WCgJ3eP/FMmyXGL5Jji5+e09eObhUDVle4tdi0On97zBoz85W02rgWFAqZJwiEAP
/// t+c7jX7uOSBq2/38iGStlrX5yB1at/gJXXiA5CL5OtlR3Okvb0/QH37efO1Nu39m
/// lFi0ODPAVyXjVypAiLguDxPn6AtDTdk9Iw9B19OD4NrzNRWgSSX5vuxo/VcRcgWk
/// 3gEe9Ca0ZKN20q9XgthAiFFjl1S9ZgdA6Zc=
/// -----END CERTIFICATE-----`,
///     privateKey: `-----BEGIN RSA PRIVATE KEY-----
/// MIIEowIBAAKCAQEAyjCheapjf7qDI3R9w/Gj0XFDgNLPK2aWIRvM25BdY/IB2KAf
/// xQ7zOxu3X1bMo2zMCzsSrwIVrxx0qRM/7e4AfkHcKwDIjCcBprQp164dhFol4GpT
/// HtcuGv0+Ue6vpuE9cxQE3/pG5x1n5EhheFu2+lAaGh/vUrUPeQp6szX/9qfzn+/k
/// tF8wsRV8PBiFc2ZNMRXupRyc2qtOn95r86w/uK6TuerU1L64E2P5+tYLBWT+39Ai
/// diUIenjURThFEn8Srvw8v/iLEMaKwiWNkOfWQH96166gzddOI8PT5cJy5an2c90T
/// DgzegVo8RPK70bU9KjH7gH79YIwXVmTdIVGAUQIDAQABAoIBAE1J4a/8biR5S3/W
/// G+03BYQeY8tuyjqw8FqfoeOcf9agwAvqybouSNQjeCk9qOQfxq/UWQQFK/zQR9gJ
/// v7pX7GBXFK5rkj3g+0SaQhRsPmRFgY0Tl8qGPt2aSKRRNVv5ZeADmwlzRn86QmiF
/// Mp0rkfqFfDTYWEepZszCML0ouzuxsW/9tq7rvtSjsgATNt31B3vFa3D3JBi31jUh
/// 5nfR9A3bATze7mQw3byEDiVl5ASRDgYyur403P1fDnMy9DBHZ8NaPOsFF6OBpJal
/// BJsG5z00hll5PFN2jfmBQKlvAeU7wfwqdaSnGHOfqf2DeTTaFjIQ4gUhRn/m6pLo
/// 6kXttLECgYEA9sng0Qz/TcPFfM4tQ1gyvB1cKnnGIwg1FP8sfUjbbEgjaHhA224S
/// k3BxtX2Kq6fhTXuwusAFc6OVMAZ76FgrQ5K4Ci7+DTsrF28z4b8td+p+lO/DxgP9
/// lTgN+ddsiTOV4fUef9Z3yY0Zr0CnBUMbQYRaV2UIbCdiB0G4V/bt9TsCgYEA0bya
/// Oo9wGI0RJV0bYP7qwO74Ra1/i1viWbRlS7jU37Q+AZstrlKcQ5CTPzOjKFKMiUzl
/// 4miWacZ0/q2n+Mvd7NbXGXTLijahnyOYKaHJYyh4oBymfkgAifRstE0Ki9gdvArb
/// /I+emC0GvLSyfGN8UUeDJs4NmqdEXGqjo2JOV+MCgYALFv1MR5o9Y1u/hQBRs2fs
/// PiGDIx+9OUQxYloccyaxEfjNXAIGGkcpavchIbgWiJ++PJ2vdquIC8TLeK8evL+M
/// 9M3iX0Q5UfxYvD2HmnCvn9D6Xl/cyRcfGnq+TGjrLW9BzSMGuZt+aiHKV0xqFx7l
/// bc4leTvMqGRmURS4lzcQOwKBgQCDzA/i4sYfN25h21tcHXSpnsG3D2rJyQi5NCo/
/// ZjunA92/JqOTGuiFcLGHEszhhtY3ZXJET1LNz18vtzKJnpqrvOnYXlOVW/U+SqDQ
/// 8JDb1c/PVZGuY1KrXkR9HLiW3kz5IJ3S3PFdUVYdeTN8BQxXCyg4V12nJJtJs912
/// y0zN3wKBgGDS6YttCN6aI4EOABYE8fI1EYQ7vhfiYsaWGWSR1l6bQey7KR6M1ACz
/// ZzMASNyytVt12yXE4/Emv6/pYqigbDLfL1zQJSLJ3EHJYTh2RxjR+AaGDudYFG/T
/// liQ9YXhV5Iu2x1pNwrtFnssDdaaGpfA7l3xC00BL7Z+SAJyI4QKA
/// -----END RSA PRIVATE KEY-----`,
/// });
/// const https = new alicloud.slb.Listener("https", {
///     loadBalancerId: instance.id,
///     backendPort: 80,
///     frontendPort: 443,
///     protocol: "https",
///     stickySession: "on",
///     stickySessionType: "insert",
///     cookie: "testslblistenercookie",
///     cookieTimeout: 86400,
///     healthCheck: "on",
///     healthCheckUri: "/cons",
///     healthCheckConnectPort: 20,
///     healthyThreshold: 8,
///     unhealthyThreshold: 8,
///     healthCheckTimeout: 8,
///     healthCheckInterval: 5,
///     healthCheckHttpCode: "http_2xx,http_3xx",
///     bandwidth: 10,
///     serverCertificateId: domainExtensionServerCertificate.id,
/// });
/// const example1 = new alicloud.slb.DomainExtension("example1", {
///     loadBalancerId: instance.id,
///     frontendPort: https.frontendPort,
///     domain: "www.test.com",
///     serverCertificateId: domainExtensionServerCertificate.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// slb_domain_extension_name = config.get("slbDomainExtensionName")
/// if slb_domain_extension_name is None:
///     slb_domain_extension_name = "forDomainExtension"
/// domain_extension = alicloud.get_zones(available_resource_creation="VSwitch")
/// domain_extension_network = alicloud.vpc.Network("domain_extension", vpc_name=slb_domain_extension_name)
/// domain_extension_switch = alicloud.vpc.Switch("domain_extension",
///     vpc_id=domain_extension_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=domain_extension.zones[0].id,
///     vswitch_name=slb_domain_extension_name)
/// instance = alicloud.slb.ApplicationLoadBalancer("instance",
///     load_balancer_name=slb_domain_extension_name,
///     address_type="intranet",
///     load_balancer_spec="slb.s2.small",
///     vswitch_id=domain_extension_switch.id)
/// domain_extension_server_certificate = alicloud.slb.ServerCertificate("domain_extension",
///     name="tf-testAccSlbServerCertificate",
///     server_certificate="""-----BEGIN CERTIFICATE-----
/// MIIDdjCCAl4CCQCcm+erkcKN7DANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJj
/// bjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcxDzANBgNVBAoMBmFsaXl1
/// bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0LmNvbTEaMBgGCSqGSIb3
/// DQEJARYLMTIzQDEyMy5jb20wHhcNMTkwNDI2MDM0ODAxWhcNMjQwNDI1MDM0ODAx
/// WjB9MQswCQYDVQQGEwJjbjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcx
/// DzANBgNVBAoMBmFsaXl1bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0
/// LmNvbTEaMBgGCSqGSIb3DQEJARYLMTIzQDEyMy5jb20wggEiMA0GCSqGSIb3DQEB
/// AQUAA4IBDwAwggEKAoIBAQDKMKF5qmN/uoMjdH3D8aPRcUOA0s8rZpYhG8zbkF1j
/// 8gHYoB/FDvM7G7dfVsyjbMwLOxKvAhWvHHSpEz/t7gB+QdwrAMiMJwGmtCnXrh2E
/// WiXgalMe1y4a/T5R7q+m4T1zFATf+kbnHWfkSGF4W7b6UBoaH+9StQ95CnqzNf/2
/// p/Of7+S0XzCxFXw8GIVzZk0xFe6lHJzaq06f3mvzrD+4rpO56tTUvrgTY/n61gsF
/// ZP7f0CJ2JQh6eNRFOEUSfxKu/Dy/+IsQxorCJY2Q59ZAf3rXrqDN104jw9PlwnLl
/// qfZz3RMODN6BWjxE8rvRtT0qMfuAfv1gjBdWZN0hUYBRAgMBAAEwDQYJKoZIhvcN
/// AQELBQADggEBAABzo82TxGp5poVkd5pLWj5ACgcBv8Cs6oH9D+4Jz9BmyuBUsQXh
/// 2aG0hQAe1mU61C9konsl/GTW8umJQ4M4lYEztXXwMf5PlBMGwebM0ZbSGg6jKtZg
/// WCgJ3eP/FMmyXGL5Jji5+e09eObhUDVle4tdi0On97zBoz85W02rgWFAqZJwiEAP
/// t+c7jX7uOSBq2/38iGStlrX5yB1at/gJXXiA5CL5OtlR3Okvb0/QH37efO1Nu39m
/// lFi0ODPAVyXjVypAiLguDxPn6AtDTdk9Iw9B19OD4NrzNRWgSSX5vuxo/VcRcgWk
/// 3gEe9Ca0ZKN20q9XgthAiFFjl1S9ZgdA6Zc=
/// -----END CERTIFICATE-----""",
///     private_key="""-----BEGIN RSA PRIVATE KEY-----
/// MIIEowIBAAKCAQEAyjCheapjf7qDI3R9w/Gj0XFDgNLPK2aWIRvM25BdY/IB2KAf
/// xQ7zOxu3X1bMo2zMCzsSrwIVrxx0qRM/7e4AfkHcKwDIjCcBprQp164dhFol4GpT
/// HtcuGv0+Ue6vpuE9cxQE3/pG5x1n5EhheFu2+lAaGh/vUrUPeQp6szX/9qfzn+/k
/// tF8wsRV8PBiFc2ZNMRXupRyc2qtOn95r86w/uK6TuerU1L64E2P5+tYLBWT+39Ai
/// diUIenjURThFEn8Srvw8v/iLEMaKwiWNkOfWQH96166gzddOI8PT5cJy5an2c90T
/// DgzegVo8RPK70bU9KjH7gH79YIwXVmTdIVGAUQIDAQABAoIBAE1J4a/8biR5S3/W
/// G+03BYQeY8tuyjqw8FqfoeOcf9agwAvqybouSNQjeCk9qOQfxq/UWQQFK/zQR9gJ
/// v7pX7GBXFK5rkj3g+0SaQhRsPmRFgY0Tl8qGPt2aSKRRNVv5ZeADmwlzRn86QmiF
/// Mp0rkfqFfDTYWEepZszCML0ouzuxsW/9tq7rvtSjsgATNt31B3vFa3D3JBi31jUh
/// 5nfR9A3bATze7mQw3byEDiVl5ASRDgYyur403P1fDnMy9DBHZ8NaPOsFF6OBpJal
/// BJsG5z00hll5PFN2jfmBQKlvAeU7wfwqdaSnGHOfqf2DeTTaFjIQ4gUhRn/m6pLo
/// 6kXttLECgYEA9sng0Qz/TcPFfM4tQ1gyvB1cKnnGIwg1FP8sfUjbbEgjaHhA224S
/// k3BxtX2Kq6fhTXuwusAFc6OVMAZ76FgrQ5K4Ci7+DTsrF28z4b8td+p+lO/DxgP9
/// lTgN+ddsiTOV4fUef9Z3yY0Zr0CnBUMbQYRaV2UIbCdiB0G4V/bt9TsCgYEA0bya
/// Oo9wGI0RJV0bYP7qwO74Ra1/i1viWbRlS7jU37Q+AZstrlKcQ5CTPzOjKFKMiUzl
/// 4miWacZ0/q2n+Mvd7NbXGXTLijahnyOYKaHJYyh4oBymfkgAifRstE0Ki9gdvArb
/// /I+emC0GvLSyfGN8UUeDJs4NmqdEXGqjo2JOV+MCgYALFv1MR5o9Y1u/hQBRs2fs
/// PiGDIx+9OUQxYloccyaxEfjNXAIGGkcpavchIbgWiJ++PJ2vdquIC8TLeK8evL+M
/// 9M3iX0Q5UfxYvD2HmnCvn9D6Xl/cyRcfGnq+TGjrLW9BzSMGuZt+aiHKV0xqFx7l
/// bc4leTvMqGRmURS4lzcQOwKBgQCDzA/i4sYfN25h21tcHXSpnsG3D2rJyQi5NCo/
/// ZjunA92/JqOTGuiFcLGHEszhhtY3ZXJET1LNz18vtzKJnpqrvOnYXlOVW/U+SqDQ
/// 8JDb1c/PVZGuY1KrXkR9HLiW3kz5IJ3S3PFdUVYdeTN8BQxXCyg4V12nJJtJs912
/// y0zN3wKBgGDS6YttCN6aI4EOABYE8fI1EYQ7vhfiYsaWGWSR1l6bQey7KR6M1ACz
/// ZzMASNyytVt12yXE4/Emv6/pYqigbDLfL1zQJSLJ3EHJYTh2RxjR+AaGDudYFG/T
/// liQ9YXhV5Iu2x1pNwrtFnssDdaaGpfA7l3xC00BL7Z+SAJyI4QKA
/// -----END RSA PRIVATE KEY-----""")
/// https = alicloud.slb.Listener("https",
///     load_balancer_id=instance.id,
///     backend_port=80,
///     frontend_port=443,
///     protocol="https",
///     sticky_session="on",
///     sticky_session_type="insert",
///     cookie="testslblistenercookie",
///     cookie_timeout=86400,
///     health_check="on",
///     health_check_uri="/cons",
///     health_check_connect_port=20,
///     healthy_threshold=8,
///     unhealthy_threshold=8,
///     health_check_timeout=8,
///     health_check_interval=5,
///     health_check_http_code="http_2xx,http_3xx",
///     bandwidth=10,
///     server_certificate_id=domain_extension_server_certificate.id)
/// example1 = alicloud.slb.DomainExtension("example1",
///     load_balancer_id=instance.id,
///     frontend_port=https.frontend_port,
///     domain="www.test.com",
///     server_certificate_id=domain_extension_server_certificate.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var slbDomainExtensionName = config.Get("slbDomainExtensionName") ?? "forDomainExtension";
///     var domainExtension = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var domainExtensionNetwork = new AliCloud.Vpc.Network("domain_extension", new()
///     {
///         VpcName = slbDomainExtensionName,
///     });
///
///     var domainExtensionSwitch = new AliCloud.Vpc.Switch("domain_extension", new()
///     {
///         VpcId = domainExtensionNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = domainExtension.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = slbDomainExtensionName,
///     });
///
///     var instance = new AliCloud.Slb.ApplicationLoadBalancer("instance", new()
///     {
///         LoadBalancerName = slbDomainExtensionName,
///         AddressType = "intranet",
///         LoadBalancerSpec = "slb.s2.small",
///         VswitchId = domainExtensionSwitch.Id,
///     });
///
///     var domainExtensionServerCertificate = new AliCloud.Slb.ServerCertificate("domain_extension", new()
///     {
///         Name = "tf-testAccSlbServerCertificate",
///         Certificate = @"-----BEGIN CERTIFICATE-----
/// MIIDdjCCAl4CCQCcm+erkcKN7DANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJj
/// bjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcxDzANBgNVBAoMBmFsaXl1
/// bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0LmNvbTEaMBgGCSqGSIb3
/// DQEJARYLMTIzQDEyMy5jb20wHhcNMTkwNDI2MDM0ODAxWhcNMjQwNDI1MDM0ODAx
/// WjB9MQswCQYDVQQGEwJjbjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcx
/// DzANBgNVBAoMBmFsaXl1bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0
/// LmNvbTEaMBgGCSqGSIb3DQEJARYLMTIzQDEyMy5jb20wggEiMA0GCSqGSIb3DQEB
/// AQUAA4IBDwAwggEKAoIBAQDKMKF5qmN/uoMjdH3D8aPRcUOA0s8rZpYhG8zbkF1j
/// 8gHYoB/FDvM7G7dfVsyjbMwLOxKvAhWvHHSpEz/t7gB+QdwrAMiMJwGmtCnXrh2E
/// WiXgalMe1y4a/T5R7q+m4T1zFATf+kbnHWfkSGF4W7b6UBoaH+9StQ95CnqzNf/2
/// p/Of7+S0XzCxFXw8GIVzZk0xFe6lHJzaq06f3mvzrD+4rpO56tTUvrgTY/n61gsF
/// ZP7f0CJ2JQh6eNRFOEUSfxKu/Dy/+IsQxorCJY2Q59ZAf3rXrqDN104jw9PlwnLl
/// qfZz3RMODN6BWjxE8rvRtT0qMfuAfv1gjBdWZN0hUYBRAgMBAAEwDQYJKoZIhvcN
/// AQELBQADggEBAABzo82TxGp5poVkd5pLWj5ACgcBv8Cs6oH9D+4Jz9BmyuBUsQXh
/// 2aG0hQAe1mU61C9konsl/GTW8umJQ4M4lYEztXXwMf5PlBMGwebM0ZbSGg6jKtZg
/// WCgJ3eP/FMmyXGL5Jji5+e09eObhUDVle4tdi0On97zBoz85W02rgWFAqZJwiEAP
/// t+c7jX7uOSBq2/38iGStlrX5yB1at/gJXXiA5CL5OtlR3Okvb0/QH37efO1Nu39m
/// lFi0ODPAVyXjVypAiLguDxPn6AtDTdk9Iw9B19OD4NrzNRWgSSX5vuxo/VcRcgWk
/// 3gEe9Ca0ZKN20q9XgthAiFFjl1S9ZgdA6Zc=
/// -----END CERTIFICATE-----",
///         PrivateKey = @"-----BEGIN RSA PRIVATE KEY-----
/// MIIEowIBAAKCAQEAyjCheapjf7qDI3R9w/Gj0XFDgNLPK2aWIRvM25BdY/IB2KAf
/// xQ7zOxu3X1bMo2zMCzsSrwIVrxx0qRM/7e4AfkHcKwDIjCcBprQp164dhFol4GpT
/// HtcuGv0+Ue6vpuE9cxQE3/pG5x1n5EhheFu2+lAaGh/vUrUPeQp6szX/9qfzn+/k
/// tF8wsRV8PBiFc2ZNMRXupRyc2qtOn95r86w/uK6TuerU1L64E2P5+tYLBWT+39Ai
/// diUIenjURThFEn8Srvw8v/iLEMaKwiWNkOfWQH96166gzddOI8PT5cJy5an2c90T
/// DgzegVo8RPK70bU9KjH7gH79YIwXVmTdIVGAUQIDAQABAoIBAE1J4a/8biR5S3/W
/// G+03BYQeY8tuyjqw8FqfoeOcf9agwAvqybouSNQjeCk9qOQfxq/UWQQFK/zQR9gJ
/// v7pX7GBXFK5rkj3g+0SaQhRsPmRFgY0Tl8qGPt2aSKRRNVv5ZeADmwlzRn86QmiF
/// Mp0rkfqFfDTYWEepZszCML0ouzuxsW/9tq7rvtSjsgATNt31B3vFa3D3JBi31jUh
/// 5nfR9A3bATze7mQw3byEDiVl5ASRDgYyur403P1fDnMy9DBHZ8NaPOsFF6OBpJal
/// BJsG5z00hll5PFN2jfmBQKlvAeU7wfwqdaSnGHOfqf2DeTTaFjIQ4gUhRn/m6pLo
/// 6kXttLECgYEA9sng0Qz/TcPFfM4tQ1gyvB1cKnnGIwg1FP8sfUjbbEgjaHhA224S
/// k3BxtX2Kq6fhTXuwusAFc6OVMAZ76FgrQ5K4Ci7+DTsrF28z4b8td+p+lO/DxgP9
/// lTgN+ddsiTOV4fUef9Z3yY0Zr0CnBUMbQYRaV2UIbCdiB0G4V/bt9TsCgYEA0bya
/// Oo9wGI0RJV0bYP7qwO74Ra1/i1viWbRlS7jU37Q+AZstrlKcQ5CTPzOjKFKMiUzl
/// 4miWacZ0/q2n+Mvd7NbXGXTLijahnyOYKaHJYyh4oBymfkgAifRstE0Ki9gdvArb
/// /I+emC0GvLSyfGN8UUeDJs4NmqdEXGqjo2JOV+MCgYALFv1MR5o9Y1u/hQBRs2fs
/// PiGDIx+9OUQxYloccyaxEfjNXAIGGkcpavchIbgWiJ++PJ2vdquIC8TLeK8evL+M
/// 9M3iX0Q5UfxYvD2HmnCvn9D6Xl/cyRcfGnq+TGjrLW9BzSMGuZt+aiHKV0xqFx7l
/// bc4leTvMqGRmURS4lzcQOwKBgQCDzA/i4sYfN25h21tcHXSpnsG3D2rJyQi5NCo/
/// ZjunA92/JqOTGuiFcLGHEszhhtY3ZXJET1LNz18vtzKJnpqrvOnYXlOVW/U+SqDQ
/// 8JDb1c/PVZGuY1KrXkR9HLiW3kz5IJ3S3PFdUVYdeTN8BQxXCyg4V12nJJtJs912
/// y0zN3wKBgGDS6YttCN6aI4EOABYE8fI1EYQ7vhfiYsaWGWSR1l6bQey7KR6M1ACz
/// ZzMASNyytVt12yXE4/Emv6/pYqigbDLfL1zQJSLJ3EHJYTh2RxjR+AaGDudYFG/T
/// liQ9YXhV5Iu2x1pNwrtFnssDdaaGpfA7l3xC00BL7Z+SAJyI4QKA
/// -----END RSA PRIVATE KEY-----",
///     });
///
///     var https = new AliCloud.Slb.Listener("https", new()
///     {
///         LoadBalancerId = instance.Id,
///         BackendPort = 80,
///         FrontendPort = 443,
///         Protocol = "https",
///         StickySession = "on",
///         StickySessionType = "insert",
///         Cookie = "testslblistenercookie",
///         CookieTimeout = 86400,
///         HealthCheck = "on",
///         HealthCheckUri = "/cons",
///         HealthCheckConnectPort = 20,
///         HealthyThreshold = 8,
///         UnhealthyThreshold = 8,
///         HealthCheckTimeout = 8,
///         HealthCheckInterval = 5,
///         HealthCheckHttpCode = "http_2xx,http_3xx",
///         Bandwidth = 10,
///         ServerCertificateId = domainExtensionServerCertificate.Id,
///     });
///
///     var example1 = new AliCloud.Slb.DomainExtension("example1", new()
///     {
///         LoadBalancerId = instance.Id,
///         FrontendPort = https.FrontendPort,
///         Domain = "www.test.com",
///         ServerCertificateId = domainExtensionServerCertificate.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		slbDomainExtensionName := "forDomainExtension"
/// 		if param := cfg.Get("slbDomainExtensionName"); param != "" {
/// 			slbDomainExtensionName = param
/// 		}
/// 		domainExtension, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		domainExtensionNetwork, err := vpc.NewNetwork(ctx, "domain_extension", &vpc.NetworkArgs{
/// 			VpcName: pulumi.String(slbDomainExtensionName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		domainExtensionSwitch, err := vpc.NewSwitch(ctx, "domain_extension", &vpc.SwitchArgs{
/// 			VpcId:       domainExtensionNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(domainExtension.Zones[0].Id),
/// 			VswitchName: pulumi.String(slbDomainExtensionName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := slb.NewApplicationLoadBalancer(ctx, "instance", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(slbDomainExtensionName),
/// 			AddressType:      pulumi.String("intranet"),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 			VswitchId:        domainExtensionSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		domainExtensionServerCertificate, err := slb.NewServerCertificate(ctx, "domain_extension", &slb.ServerCertificateArgs{
/// 			Name: pulumi.String("tf-testAccSlbServerCertificate"),
/// 			ServerCertificate: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDdjCCAl4CCQCcm+erkcKN7DANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJj
/// bjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcxDzANBgNVBAoMBmFsaXl1
/// bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0LmNvbTEaMBgGCSqGSIb3
/// DQEJARYLMTIzQDEyMy5jb20wHhcNMTkwNDI2MDM0ODAxWhcNMjQwNDI1MDM0ODAx
/// WjB9MQswCQYDVQQGEwJjbjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcx
/// DzANBgNVBAoMBmFsaXl1bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0
/// LmNvbTEaMBgGCSqGSIb3DQEJARYLMTIzQDEyMy5jb20wggEiMA0GCSqGSIb3DQEB
/// AQUAA4IBDwAwggEKAoIBAQDKMKF5qmN/uoMjdH3D8aPRcUOA0s8rZpYhG8zbkF1j
/// 8gHYoB/FDvM7G7dfVsyjbMwLOxKvAhWvHHSpEz/t7gB+QdwrAMiMJwGmtCnXrh2E
/// WiXgalMe1y4a/T5R7q+m4T1zFATf+kbnHWfkSGF4W7b6UBoaH+9StQ95CnqzNf/2
/// p/Of7+S0XzCxFXw8GIVzZk0xFe6lHJzaq06f3mvzrD+4rpO56tTUvrgTY/n61gsF
/// ZP7f0CJ2JQh6eNRFOEUSfxKu/Dy/+IsQxorCJY2Q59ZAf3rXrqDN104jw9PlwnLl
/// qfZz3RMODN6BWjxE8rvRtT0qMfuAfv1gjBdWZN0hUYBRAgMBAAEwDQYJKoZIhvcN
/// AQELBQADggEBAABzo82TxGp5poVkd5pLWj5ACgcBv8Cs6oH9D+4Jz9BmyuBUsQXh
/// 2aG0hQAe1mU61C9konsl/GTW8umJQ4M4lYEztXXwMf5PlBMGwebM0ZbSGg6jKtZg
/// WCgJ3eP/FMmyXGL5Jji5+e09eObhUDVle4tdi0On97zBoz85W02rgWFAqZJwiEAP
/// t+c7jX7uOSBq2/38iGStlrX5yB1at/gJXXiA5CL5OtlR3Okvb0/QH37efO1Nu39m
/// lFi0ODPAVyXjVypAiLguDxPn6AtDTdk9Iw9B19OD4NrzNRWgSSX5vuxo/VcRcgWk
/// 3gEe9Ca0ZKN20q9XgthAiFFjl1S9ZgdA6Zc=
/// -----END CERTIFICATE-----`),
/// 			PrivateKey: pulumi.String(`-----BEGIN RSA PRIVATE KEY-----
/// MIIEowIBAAKCAQEAyjCheapjf7qDI3R9w/Gj0XFDgNLPK2aWIRvM25BdY/IB2KAf
/// xQ7zOxu3X1bMo2zMCzsSrwIVrxx0qRM/7e4AfkHcKwDIjCcBprQp164dhFol4GpT
/// HtcuGv0+Ue6vpuE9cxQE3/pG5x1n5EhheFu2+lAaGh/vUrUPeQp6szX/9qfzn+/k
/// tF8wsRV8PBiFc2ZNMRXupRyc2qtOn95r86w/uK6TuerU1L64E2P5+tYLBWT+39Ai
/// diUIenjURThFEn8Srvw8v/iLEMaKwiWNkOfWQH96166gzddOI8PT5cJy5an2c90T
/// DgzegVo8RPK70bU9KjH7gH79YIwXVmTdIVGAUQIDAQABAoIBAE1J4a/8biR5S3/W
/// G+03BYQeY8tuyjqw8FqfoeOcf9agwAvqybouSNQjeCk9qOQfxq/UWQQFK/zQR9gJ
/// v7pX7GBXFK5rkj3g+0SaQhRsPmRFgY0Tl8qGPt2aSKRRNVv5ZeADmwlzRn86QmiF
/// Mp0rkfqFfDTYWEepZszCML0ouzuxsW/9tq7rvtSjsgATNt31B3vFa3D3JBi31jUh
/// 5nfR9A3bATze7mQw3byEDiVl5ASRDgYyur403P1fDnMy9DBHZ8NaPOsFF6OBpJal
/// BJsG5z00hll5PFN2jfmBQKlvAeU7wfwqdaSnGHOfqf2DeTTaFjIQ4gUhRn/m6pLo
/// 6kXttLECgYEA9sng0Qz/TcPFfM4tQ1gyvB1cKnnGIwg1FP8sfUjbbEgjaHhA224S
/// k3BxtX2Kq6fhTXuwusAFc6OVMAZ76FgrQ5K4Ci7+DTsrF28z4b8td+p+lO/DxgP9
/// lTgN+ddsiTOV4fUef9Z3yY0Zr0CnBUMbQYRaV2UIbCdiB0G4V/bt9TsCgYEA0bya
/// Oo9wGI0RJV0bYP7qwO74Ra1/i1viWbRlS7jU37Q+AZstrlKcQ5CTPzOjKFKMiUzl
/// 4miWacZ0/q2n+Mvd7NbXGXTLijahnyOYKaHJYyh4oBymfkgAifRstE0Ki9gdvArb
/// /I+emC0GvLSyfGN8UUeDJs4NmqdEXGqjo2JOV+MCgYALFv1MR5o9Y1u/hQBRs2fs
/// PiGDIx+9OUQxYloccyaxEfjNXAIGGkcpavchIbgWiJ++PJ2vdquIC8TLeK8evL+M
/// 9M3iX0Q5UfxYvD2HmnCvn9D6Xl/cyRcfGnq+TGjrLW9BzSMGuZt+aiHKV0xqFx7l
/// bc4leTvMqGRmURS4lzcQOwKBgQCDzA/i4sYfN25h21tcHXSpnsG3D2rJyQi5NCo/
/// ZjunA92/JqOTGuiFcLGHEszhhtY3ZXJET1LNz18vtzKJnpqrvOnYXlOVW/U+SqDQ
/// 8JDb1c/PVZGuY1KrXkR9HLiW3kz5IJ3S3PFdUVYdeTN8BQxXCyg4V12nJJtJs912
/// y0zN3wKBgGDS6YttCN6aI4EOABYE8fI1EYQ7vhfiYsaWGWSR1l6bQey7KR6M1ACz
/// ZzMASNyytVt12yXE4/Emv6/pYqigbDLfL1zQJSLJ3EHJYTh2RxjR+AaGDudYFG/T
/// liQ9YXhV5Iu2x1pNwrtFnssDdaaGpfA7l3xC00BL7Z+SAJyI4QKA
/// -----END RSA PRIVATE KEY-----`),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		https, err := slb.NewListener(ctx, "https", &slb.ListenerArgs{
/// 			LoadBalancerId:         instance.ID(),
/// 			BackendPort:            pulumi.Int(80),
/// 			FrontendPort:           pulumi.Int(443),
/// 			Protocol:               pulumi.String("https"),
/// 			StickySession:          pulumi.String("on"),
/// 			StickySessionType:      pulumi.String("insert"),
/// 			Cookie:                 pulumi.String("testslblistenercookie"),
/// 			CookieTimeout:          pulumi.Int(86400),
/// 			HealthCheck:            pulumi.String("on"),
/// 			HealthCheckUri:         pulumi.String("/cons"),
/// 			HealthCheckConnectPort: pulumi.Int(20),
/// 			HealthyThreshold:       pulumi.Int(8),
/// 			UnhealthyThreshold:     pulumi.Int(8),
/// 			HealthCheckTimeout:     pulumi.Int(8),
/// 			HealthCheckInterval:    pulumi.Int(5),
/// 			HealthCheckHttpCode:    pulumi.String("http_2xx,http_3xx"),
/// 			Bandwidth:              pulumi.Int(10),
/// 			ServerCertificateId:    domainExtensionServerCertificate.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewDomainExtension(ctx, "example1", &slb.DomainExtensionArgs{
/// 			LoadBalancerId:      instance.ID(),
/// 			FrontendPort:        https.FrontendPort,
/// 			Domain:              pulumi.String("www.test.com"),
/// 			ServerCertificateId: domainExtensionServerCertificate.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.ServerCertificate;
/// import com.pulumi.alicloud.slb.ServerCertificateArgs;
/// import com.pulumi.alicloud.slb.Listener;
/// import com.pulumi.alicloud.slb.ListenerArgs;
/// import com.pulumi.alicloud.slb.DomainExtension;
/// import com.pulumi.alicloud.slb.DomainExtensionArgs;
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
///         final var slbDomainExtensionName = config.get("slbDomainExtensionName").orElse("forDomainExtension");
///         final var domainExtension = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var domainExtensionNetwork = new Network("domainExtensionNetwork", NetworkArgs.builder()
///             .vpcName(slbDomainExtensionName)
///             .build());
///
///         var domainExtensionSwitch = new Switch("domainExtensionSwitch", SwitchArgs.builder()
///             .vpcId(domainExtensionNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(domainExtension.zones()[0].id())
///             .vswitchName(slbDomainExtensionName)
///             .build());
///
///         var instance = new ApplicationLoadBalancer("instance", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(slbDomainExtensionName)
///             .addressType("intranet")
///             .loadBalancerSpec("slb.s2.small")
///             .vswitchId(domainExtensionSwitch.id())
///             .build());
///
///         var domainExtensionServerCertificate = new ServerCertificate("domainExtensionServerCertificate", ServerCertificateArgs.builder()
///             .name("tf-testAccSlbServerCertificate")
///             .serverCertificate("""
/// -----BEGIN CERTIFICATE-----
/// MIIDdjCCAl4CCQCcm+erkcKN7DANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJj
/// bjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcxDzANBgNVBAoMBmFsaXl1
/// bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0LmNvbTEaMBgGCSqGSIb3
/// DQEJARYLMTIzQDEyMy5jb20wHhcNMTkwNDI2MDM0ODAxWhcNMjQwNDI1MDM0ODAx
/// WjB9MQswCQYDVQQGEwJjbjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcx
/// DzANBgNVBAoMBmFsaXl1bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0
/// LmNvbTEaMBgGCSqGSIb3DQEJARYLMTIzQDEyMy5jb20wggEiMA0GCSqGSIb3DQEB
/// AQUAA4IBDwAwggEKAoIBAQDKMKF5qmN/uoMjdH3D8aPRcUOA0s8rZpYhG8zbkF1j
/// 8gHYoB/FDvM7G7dfVsyjbMwLOxKvAhWvHHSpEz/t7gB+QdwrAMiMJwGmtCnXrh2E
/// WiXgalMe1y4a/T5R7q+m4T1zFATf+kbnHWfkSGF4W7b6UBoaH+9StQ95CnqzNf/2
/// p/Of7+S0XzCxFXw8GIVzZk0xFe6lHJzaq06f3mvzrD+4rpO56tTUvrgTY/n61gsF
/// ZP7f0CJ2JQh6eNRFOEUSfxKu/Dy/+IsQxorCJY2Q59ZAf3rXrqDN104jw9PlwnLl
/// qfZz3RMODN6BWjxE8rvRtT0qMfuAfv1gjBdWZN0hUYBRAgMBAAEwDQYJKoZIhvcN
/// AQELBQADggEBAABzo82TxGp5poVkd5pLWj5ACgcBv8Cs6oH9D+4Jz9BmyuBUsQXh
/// 2aG0hQAe1mU61C9konsl/GTW8umJQ4M4lYEztXXwMf5PlBMGwebM0ZbSGg6jKtZg
/// WCgJ3eP/FMmyXGL5Jji5+e09eObhUDVle4tdi0On97zBoz85W02rgWFAqZJwiEAP
/// t+c7jX7uOSBq2/38iGStlrX5yB1at/gJXXiA5CL5OtlR3Okvb0/QH37efO1Nu39m
/// lFi0ODPAVyXjVypAiLguDxPn6AtDTdk9Iw9B19OD4NrzNRWgSSX5vuxo/VcRcgWk
/// 3gEe9Ca0ZKN20q9XgthAiFFjl1S9ZgdA6Zc=
/// -----END CERTIFICATE-----            """)
///             .privateKey("""
/// -----BEGIN RSA PRIVATE KEY-----
/// MIIEowIBAAKCAQEAyjCheapjf7qDI3R9w/Gj0XFDgNLPK2aWIRvM25BdY/IB2KAf
/// xQ7zOxu3X1bMo2zMCzsSrwIVrxx0qRM/7e4AfkHcKwDIjCcBprQp164dhFol4GpT
/// HtcuGv0+Ue6vpuE9cxQE3/pG5x1n5EhheFu2+lAaGh/vUrUPeQp6szX/9qfzn+/k
/// tF8wsRV8PBiFc2ZNMRXupRyc2qtOn95r86w/uK6TuerU1L64E2P5+tYLBWT+39Ai
/// diUIenjURThFEn8Srvw8v/iLEMaKwiWNkOfWQH96166gzddOI8PT5cJy5an2c90T
/// DgzegVo8RPK70bU9KjH7gH79YIwXVmTdIVGAUQIDAQABAoIBAE1J4a/8biR5S3/W
/// G+03BYQeY8tuyjqw8FqfoeOcf9agwAvqybouSNQjeCk9qOQfxq/UWQQFK/zQR9gJ
/// v7pX7GBXFK5rkj3g+0SaQhRsPmRFgY0Tl8qGPt2aSKRRNVv5ZeADmwlzRn86QmiF
/// Mp0rkfqFfDTYWEepZszCML0ouzuxsW/9tq7rvtSjsgATNt31B3vFa3D3JBi31jUh
/// 5nfR9A3bATze7mQw3byEDiVl5ASRDgYyur403P1fDnMy9DBHZ8NaPOsFF6OBpJal
/// BJsG5z00hll5PFN2jfmBQKlvAeU7wfwqdaSnGHOfqf2DeTTaFjIQ4gUhRn/m6pLo
/// 6kXttLECgYEA9sng0Qz/TcPFfM4tQ1gyvB1cKnnGIwg1FP8sfUjbbEgjaHhA224S
/// k3BxtX2Kq6fhTXuwusAFc6OVMAZ76FgrQ5K4Ci7+DTsrF28z4b8td+p+lO/DxgP9
/// lTgN+ddsiTOV4fUef9Z3yY0Zr0CnBUMbQYRaV2UIbCdiB0G4V/bt9TsCgYEA0bya
/// Oo9wGI0RJV0bYP7qwO74Ra1/i1viWbRlS7jU37Q+AZstrlKcQ5CTPzOjKFKMiUzl
/// 4miWacZ0/q2n+Mvd7NbXGXTLijahnyOYKaHJYyh4oBymfkgAifRstE0Ki9gdvArb
/// /I+emC0GvLSyfGN8UUeDJs4NmqdEXGqjo2JOV+MCgYALFv1MR5o9Y1u/hQBRs2fs
/// PiGDIx+9OUQxYloccyaxEfjNXAIGGkcpavchIbgWiJ++PJ2vdquIC8TLeK8evL+M
/// 9M3iX0Q5UfxYvD2HmnCvn9D6Xl/cyRcfGnq+TGjrLW9BzSMGuZt+aiHKV0xqFx7l
/// bc4leTvMqGRmURS4lzcQOwKBgQCDzA/i4sYfN25h21tcHXSpnsG3D2rJyQi5NCo/
/// ZjunA92/JqOTGuiFcLGHEszhhtY3ZXJET1LNz18vtzKJnpqrvOnYXlOVW/U+SqDQ
/// 8JDb1c/PVZGuY1KrXkR9HLiW3kz5IJ3S3PFdUVYdeTN8BQxXCyg4V12nJJtJs912
/// y0zN3wKBgGDS6YttCN6aI4EOABYE8fI1EYQ7vhfiYsaWGWSR1l6bQey7KR6M1ACz
/// ZzMASNyytVt12yXE4/Emv6/pYqigbDLfL1zQJSLJ3EHJYTh2RxjR+AaGDudYFG/T
/// liQ9YXhV5Iu2x1pNwrtFnssDdaaGpfA7l3xC00BL7Z+SAJyI4QKA
/// -----END RSA PRIVATE KEY-----            """)
///             .build());
///
///         var https = new Listener("https", ListenerArgs.builder()
///             .loadBalancerId(instance.id())
///             .backendPort(80)
///             .frontendPort(443)
///             .protocol("https")
///             .stickySession("on")
///             .stickySessionType("insert")
///             .cookie("testslblistenercookie")
///             .cookieTimeout(86400)
///             .healthCheck("on")
///             .healthCheckUri("/cons")
///             .healthCheckConnectPort(20)
///             .healthyThreshold(8)
///             .unhealthyThreshold(8)
///             .healthCheckTimeout(8)
///             .healthCheckInterval(5)
///             .healthCheckHttpCode("http_2xx,http_3xx")
///             .bandwidth(10)
///             .serverCertificateId(domainExtensionServerCertificate.id())
///             .build());
///
///         var example1 = new DomainExtension("example1", DomainExtensionArgs.builder()
///             .loadBalancerId(instance.id())
///             .frontendPort(https.frontendPort())
///             .domain("www.test.com")
///             .serverCertificateId(domainExtensionServerCertificate.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # Create a new load balancer and domain extension
///   slbDomainExtensionName:
///     type: string
///     default: forDomainExtension
/// resources:
///   domainExtensionNetwork:
///     type: alicloud:vpc:Network
///     name: domain_extension
///     properties:
///       vpcName: ${slbDomainExtensionName}
///   domainExtensionSwitch:
///     type: alicloud:vpc:Switch
///     name: domain_extension
///     properties:
///       vpcId: ${domainExtensionNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${domainExtension.zones[0].id}
///       vswitchName: ${slbDomainExtensionName}
///   instance:
///     type: alicloud:slb:ApplicationLoadBalancer
///     properties:
///       loadBalancerName: ${slbDomainExtensionName}
///       addressType: intranet
///       loadBalancerSpec: slb.s2.small
///       vswitchId: ${domainExtensionSwitch.id}
///   domainExtensionServerCertificate:
///     type: alicloud:slb:ServerCertificate
///     name: domain_extension
///     properties:
///       name: tf-testAccSlbServerCertificate
///       serverCertificate: |-
///         -----BEGIN CERTIFICATE-----
///         MIIDdjCCAl4CCQCcm+erkcKN7DANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJj
///         bjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcxDzANBgNVBAoMBmFsaXl1
///         bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0LmNvbTEaMBgGCSqGSIb3
///         DQEJARYLMTIzQDEyMy5jb20wHhcNMTkwNDI2MDM0ODAxWhcNMjQwNDI1MDM0ODAx
///         WjB9MQswCQYDVQQGEwJjbjELMAkGA1UECAwCYmoxEDAOBgNVBAcMB2JlaWppbmcx
///         DzANBgNVBAoMBmFsaXl1bjELMAkGA1UECwwCc2MxFTATBgNVBAMMDHd3dy50ZXN0
///         LmNvbTEaMBgGCSqGSIb3DQEJARYLMTIzQDEyMy5jb20wggEiMA0GCSqGSIb3DQEB
///         AQUAA4IBDwAwggEKAoIBAQDKMKF5qmN/uoMjdH3D8aPRcUOA0s8rZpYhG8zbkF1j
///         8gHYoB/FDvM7G7dfVsyjbMwLOxKvAhWvHHSpEz/t7gB+QdwrAMiMJwGmtCnXrh2E
///         WiXgalMe1y4a/T5R7q+m4T1zFATf+kbnHWfkSGF4W7b6UBoaH+9StQ95CnqzNf/2
///         p/Of7+S0XzCxFXw8GIVzZk0xFe6lHJzaq06f3mvzrD+4rpO56tTUvrgTY/n61gsF
///         ZP7f0CJ2JQh6eNRFOEUSfxKu/Dy/+IsQxorCJY2Q59ZAf3rXrqDN104jw9PlwnLl
///         qfZz3RMODN6BWjxE8rvRtT0qMfuAfv1gjBdWZN0hUYBRAgMBAAEwDQYJKoZIhvcN
///         AQELBQADggEBAABzo82TxGp5poVkd5pLWj5ACgcBv8Cs6oH9D+4Jz9BmyuBUsQXh
///         2aG0hQAe1mU61C9konsl/GTW8umJQ4M4lYEztXXwMf5PlBMGwebM0ZbSGg6jKtZg
///         WCgJ3eP/FMmyXGL5Jji5+e09eObhUDVle4tdi0On97zBoz85W02rgWFAqZJwiEAP
///         t+c7jX7uOSBq2/38iGStlrX5yB1at/gJXXiA5CL5OtlR3Okvb0/QH37efO1Nu39m
///         lFi0ODPAVyXjVypAiLguDxPn6AtDTdk9Iw9B19OD4NrzNRWgSSX5vuxo/VcRcgWk
///         3gEe9Ca0ZKN20q9XgthAiFFjl1S9ZgdA6Zc=
///         -----END CERTIFICATE-----
///       privateKey: |-
///         -----BEGIN RSA PRIVATE KEY-----
///         MIIEowIBAAKCAQEAyjCheapjf7qDI3R9w/Gj0XFDgNLPK2aWIRvM25BdY/IB2KAf
///         xQ7zOxu3X1bMo2zMCzsSrwIVrxx0qRM/7e4AfkHcKwDIjCcBprQp164dhFol4GpT
///         HtcuGv0+Ue6vpuE9cxQE3/pG5x1n5EhheFu2+lAaGh/vUrUPeQp6szX/9qfzn+/k
///         tF8wsRV8PBiFc2ZNMRXupRyc2qtOn95r86w/uK6TuerU1L64E2P5+tYLBWT+39Ai
///         diUIenjURThFEn8Srvw8v/iLEMaKwiWNkOfWQH96166gzddOI8PT5cJy5an2c90T
///         DgzegVo8RPK70bU9KjH7gH79YIwXVmTdIVGAUQIDAQABAoIBAE1J4a/8biR5S3/W
///         G+03BYQeY8tuyjqw8FqfoeOcf9agwAvqybouSNQjeCk9qOQfxq/UWQQFK/zQR9gJ
///         v7pX7GBXFK5rkj3g+0SaQhRsPmRFgY0Tl8qGPt2aSKRRNVv5ZeADmwlzRn86QmiF
///         Mp0rkfqFfDTYWEepZszCML0ouzuxsW/9tq7rvtSjsgATNt31B3vFa3D3JBi31jUh
///         5nfR9A3bATze7mQw3byEDiVl5ASRDgYyur403P1fDnMy9DBHZ8NaPOsFF6OBpJal
///         BJsG5z00hll5PFN2jfmBQKlvAeU7wfwqdaSnGHOfqf2DeTTaFjIQ4gUhRn/m6pLo
///         6kXttLECgYEA9sng0Qz/TcPFfM4tQ1gyvB1cKnnGIwg1FP8sfUjbbEgjaHhA224S
///         k3BxtX2Kq6fhTXuwusAFc6OVMAZ76FgrQ5K4Ci7+DTsrF28z4b8td+p+lO/DxgP9
///         lTgN+ddsiTOV4fUef9Z3yY0Zr0CnBUMbQYRaV2UIbCdiB0G4V/bt9TsCgYEA0bya
///         Oo9wGI0RJV0bYP7qwO74Ra1/i1viWbRlS7jU37Q+AZstrlKcQ5CTPzOjKFKMiUzl
///         4miWacZ0/q2n+Mvd7NbXGXTLijahnyOYKaHJYyh4oBymfkgAifRstE0Ki9gdvArb
///         /I+emC0GvLSyfGN8UUeDJs4NmqdEXGqjo2JOV+MCgYALFv1MR5o9Y1u/hQBRs2fs
///         PiGDIx+9OUQxYloccyaxEfjNXAIGGkcpavchIbgWiJ++PJ2vdquIC8TLeK8evL+M
///         9M3iX0Q5UfxYvD2HmnCvn9D6Xl/cyRcfGnq+TGjrLW9BzSMGuZt+aiHKV0xqFx7l
///         bc4leTvMqGRmURS4lzcQOwKBgQCDzA/i4sYfN25h21tcHXSpnsG3D2rJyQi5NCo/
///         ZjunA92/JqOTGuiFcLGHEszhhtY3ZXJET1LNz18vtzKJnpqrvOnYXlOVW/U+SqDQ
///         8JDb1c/PVZGuY1KrXkR9HLiW3kz5IJ3S3PFdUVYdeTN8BQxXCyg4V12nJJtJs912
///         y0zN3wKBgGDS6YttCN6aI4EOABYE8fI1EYQ7vhfiYsaWGWSR1l6bQey7KR6M1ACz
///         ZzMASNyytVt12yXE4/Emv6/pYqigbDLfL1zQJSLJ3EHJYTh2RxjR+AaGDudYFG/T
///         liQ9YXhV5Iu2x1pNwrtFnssDdaaGpfA7l3xC00BL7Z+SAJyI4QKA
///         -----END RSA PRIVATE KEY-----
///   https:
///     type: alicloud:slb:Listener
///     properties:
///       loadBalancerId: ${instance.id}
///       backendPort: 80
///       frontendPort: 443
///       protocol: https
///       stickySession: on
///       stickySessionType: insert
///       cookie: testslblistenercookie
///       cookieTimeout: 86400
///       healthCheck: on
///       healthCheckUri: /cons
///       healthCheckConnectPort: 20
///       healthyThreshold: 8
///       unhealthyThreshold: 8
///       healthCheckTimeout: 8
///       healthCheckInterval: 5
///       healthCheckHttpCode: http_2xx,http_3xx
///       bandwidth: 10
///       serverCertificateId: ${domainExtensionServerCertificate.id}
///   example1:
///     type: alicloud:slb:DomainExtension
///     properties:
///       loadBalancerId: ${instance.id}
///       frontendPort: ${https.frontendPort}
///       domain: www.test.com
///       serverCertificateId: ${domainExtensionServerCertificate.id}
/// variables:
///   domainExtension:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Load balancer domain_extension can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/domainExtension:DomainExtension example de-abc123456
/// ```
class DomainExtension extends pulumi.CustomResource {
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  late final pulumi.Output<bool?> deleteProtectionValidation;
  /// The domain name.
  late final pulumi.Output<String> domain;
  /// The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  late final pulumi.Output<int> frontendPort;
  /// The ID of the SLB instance.
  late final pulumi.Output<String> loadBalancerId;
  /// The ID of the certificate used by the domain name.
  late final pulumi.Output<String> serverCertificateId;

  /// Creates a new [DomainExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainExtension]. {@macro pulumi_slb_domain_extension_domain_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainExtension(
    String name, {
    DomainExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/domainExtension:DomainExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    this.domain = registerOutput<String>('domain');
    this.frontendPort = registerOutput<int>('frontendPort');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.serverCertificateId = registerOutput<String>('serverCertificateId');
  }

  /// Gets an existing [DomainExtension] resource's state with the given [name] and [id].
  static DomainExtension get(
    String name,
    pulumi.Input<String> id, {
    DomainExtensionState? state,
  }) {
    return DomainExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/domainExtension:DomainExtension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    this.domain = registerOutput<String>('domain');
    this.frontendPort = registerOutput<int>('frontendPort');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.serverCertificateId = registerOutput<String>('serverCertificateId');
  }
}
