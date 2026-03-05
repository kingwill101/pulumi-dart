import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_certificate_args.dart';
import 'additional_certificate_state.dart';

/// Provides a Global Accelerator (GA) Additional Certificate resource.
///
/// For information about Global Accelerator (GA) Additional Certificate and how to use it, see [What is Additional Certificate](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-associateadditionalcertificateswithlistener).
///
/// &gt; **NOTE:** Available since v1.150.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.ga.getAccelerators({
///     status: "active",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
///     bandwidthPackageName: name,
///     autoPay: true,
///     autoUseCoupon: true,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: _default.then(_default => _default.ids?.[0]),
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultServiceCertificate: alicloud.cas.ServiceCertificate[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultServiceCertificate.push(new alicloud.cas.ServiceCertificate(`default-${range.value}`, {
///         certificateName: std.join({
///             separator: "-",
///             input: [
///                 name,
///                 range.value,
///             ],
///         }).then(invoke => invoke.result),
///         cert: `-----BEGIN CERTIFICATE-----
/// MIID7zCCAtegAwIBAgIRAKi2/Fx1cUTyhV839x42ockwDQYJKoZIhvcNAQELBQAw
/// XjELMAkGA1UEBhMCQ04xDjAMBgNVBAoTBU15U1NMMSswKQYDVQQLEyJNeVNTTCBU
/// ZXN0IFJTQSAtIEZvciB0ZXN0IHVzZSBvbmx5MRIwEAYDVQQDEwlNeVNTTC5jb20w
/// HhcNMjMwODA5MDQ1NDU3WhcNMjYwODA4MDQ1NDU3WjAsMQswCQYDVQQGEwJDTjEd
/// MBsGA1UEAxMUYWxpY2xvdWQtcHJvdmlkZXIuY24wggEiMA0GCSqGSIb3DQEBAQUA
/// A4IBDwAwggEKAoIBAQDdkot9e0pMCTPAtA29Sz5sF+aPT/l9+3sOnQeJ1kKLNkqK
/// iQgwADexoAqlmTaZM03gh/GnkqPw9gxN/fJHWdVzxE03Fs8bKgMdS6cf0v/xArrQ
/// zm6N4vmsbuE8SX2eu303PAsyBMqPByTODZ5i+5LkZcrxMFQsbA3xnBouzS5e+T+a
/// 7YTyyVv5WDy871/sdRAYTfnUttdnqkKGeMKgQgRlJ2pDk5/k2iwmQmSh/wbk465+
/// 1U5w2npPYGPvGAkzl7RRc4/VckqlV8P0cmgguqIRyllJwFEnvcpqpOHTxBOBq9iZ
/// 4b/h7ynrfB/GbAw574eSEl0gzLBW60bT9YedbTeXAgMBAAGjgdkwgdYwDgYDVR0P
/// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSME
/// GDAWgBQogSYF0TQaP8FzD7uTzxUcPwO/fzBjBggrBgEFBQcBAQRXMFUwIQYIKwYB
/// BQUHMAGGFWh0dHA6Ly9vY3NwLm15c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0cDov
/// L2NhLm15c3NsLmNvbS9teXNzbHRlc3Ryc2EuY3J0MB8GA1UdEQQYMBaCFGFsaWNs
/// b3VkLXByb3ZpZGVyLmNuMA0GCSqGSIb3DQEBCwUAA4IBAQCwUBeznv6cAjcTLCDb
/// SSvgkM9HFcbWnuGS8Nf5P4YfmSs52VuHZyjzwphjAU6B/danI/nMdZe52PXyvjVV
/// 02Y8ld/tMpqPV5SpaOadLtdg6TGBNJieOAt9doM8WNEgq/JycAL9ivIOjChUetZf
/// ZEV7HDIgiHSpqAPWMZYL71MS/p5zYkyOnPqmGyLNdi1neotwVCQopQXRNC2iLlVV
/// yQONfXH5iijqr1iTWkB0ESK/xBt1PB655PlTjzFQUOovE1SyoQS8K3u7TP6+BqtD
/// G9TYNTNZvxl5I/iU/KdWVip+qJbxRA8Skc8gHkkzeIEStw3l5cjnrp9h7EhnhkOh
/// ltGN
/// -----END CERTIFICATE-----
/// `,
///         key: `-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEA3ZKLfXtKTAkzwLQNvUs+bBfmj0/5fft7Dp0HidZCizZKiokI
/// MAA3saAKpZk2mTNN4Ifxp5Kj8PYMTf3yR1nVc8RNNxbPGyoDHUunH9L/8QK60M5u
/// jeL5rG7hPEl9nrt9NzwLMgTKjwckzg2eYvuS5GXK8TBULGwN8ZwaLs0uXvk/mu2E
/// 8slb+Vg8vO9f7HUQGE351LbXZ6pChnjCoEIEZSdqQ5Of5NosJkJkof8G5OOuftVO
/// cNp6T2Bj7xgJM5e0UXOP1XJKpVfD9HJoILqiEcpZScBRJ73KaqTh08QTgavYmeG/
/// 4e8p63wfxmwMOe+HkhJdIMywVutG0/WHnW03lwIDAQABAoIBAQCe5rHS09B8pzzO
/// PlJ8JrIlox5eOOScTPX7jPITD+25GL5si8mrYvyODlCUYkSdqgV3uQa9PpUEAfDh
/// HfXa5boGxAj8MQdmW8LQB6lbUV7r4SFJDkKKzvRvjTVKnwnQBHXQXudIf9ckq+Lh
/// QzMLmY/G7JmWTyqOkQ+O7nx4g/11bcU7uQrQdvWPfc0+IiT1TYQdyLQ/Chlj3RF/
/// iwF8ZL2sfKF+Z5O49+Q6cXvUcQOvqtkIXbQijayyVNBMJwDB7aOZRA7JBNj9/ib6
/// N0iTo81dJVz/nnpbWRaFTVinIsDF1heDfQ1qDx06T/Mpi6pjoWjRUcyIHEbZJTel
/// 0nXDJD1BAoGBAPZB/PN8MP+o9gkf2jnoU9LzctDJrQwD1J2XElq4RomimPIMqDQP
/// 5TRAJThf0O0X4Mv2n9EzV457OpJL+fz9htRWEYogWl9bkbzZ1AoX4K/acuGeawTT
/// YEhPjJ2ZETsBsCeDkDDuHHzYwRQv+EfoXH36z9PBDxG1ZDb7kWwAILXdAoGBAOZW
/// jXG7m4I7cxUtXGtjwydh4K7nwH/5QoH2m928HM2AT48eQCl3CMQ089+qeJGgfHQv
/// GyVOO/FGhcFsFi10FMQ7IlwWgZODg64qnrNhi4zbV1M2wKem1T2dlEpkd82EFdnS
/// GYRIEkFORMxEDyzx3Th2TajpWC8YKKG3Tnm0bQ4DAoGBAIZTEEswHvoVi78GZN7Z
/// X3/d028X0xCOtlcPpK9ffPpuesbtKILdeMS7iJHrkecB81jOOfa+7q+FgDl0v/PD
/// xtvj5sVVSHZjWGeO2h53T9QccDWpV+7V7dsDqUv9xmxNS20CUpCeEWP4R7lfQSrY
/// EDuXp+11jWa3buae6n/iwfTxAoGABEYW2cVhXUk9GWd+D4AKXvCx+ozSRY2abk7l
/// FXgoEKgQ0db92ccboohY/g1rr0gLBxzYpBiPhCqK0MvwnWdJ+1odiRfhz5rhFpoz
/// 16A3tqVbOXAKoxG1Yy9JURgMIQQSY7hCQPIVZKDPJfsdTPgv4pxPVJL/z9/i4R1F
/// l3yBiYECgYEA0+vpzL24nHZYdwgBF4qbmYhv8baRi07/BNgV1+d6vESuO/MwwoE/
/// 2UZ9Drf5yoX2Bvi5/vVMbyc7cSluO7icPBkl0D8F7E3x0v5mzwPxtpR8BTRoJKOL
/// /rMdLscMz2VQsL5DJd/9OZg60fHRaRtWtV0afXzL5zUxnfDLot24IG4=
/// -----END RSA PRIVATE KEY-----
/// `,
///     }));
/// }
/// const defaultListener = new alicloud.ga.Listener("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     name: name,
///     protocol: "HTTPS",
///     portRanges: [{
///         fromPort: 8080,
///         toPort: 8080,
///     }],
///     certificates: [{
///         id: std.joinOutput({
///             separator: "-",
///             input: [
///                 defaultServiceCertificate[1].id,
///                 region,
///             ],
///         }).apply(invoke => invoke.result),
///     }],
/// });
/// const domain = "alicloud-provider.cn";
/// const defaultAdditionalCertificate = new alicloud.ga.AdditionalCertificate("default", {
///     certificateId: std.joinOutput({
///         separator: "-",
///         input: [
///             defaultServiceCertificate[1].id,
///             region,
///         ],
///     }).apply(invoke => invoke.result),
///     domain: domain,
///     acceleratorId: defaultListener.acceleratorId,
///     listenerId: defaultListener.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.ga.get_accelerators(status="active")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30,
///     bandwidth_package_name=name,
///     auto_pay=True,
///     auto_use_coupon=True)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default.ids[0],
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_service_certificate = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_service_certificate.append(alicloud.cas.ServiceCertificate(f"default-{range['value']}",
///         certificate_name=std.join(separator="-",
///             input=[
///                 name,
///                 range["value"],
///             ]).result,
///         cert="""-----BEGIN CERTIFICATE-----
/// MIID7zCCAtegAwIBAgIRAKi2/Fx1cUTyhV839x42ockwDQYJKoZIhvcNAQELBQAw
/// XjELMAkGA1UEBhMCQ04xDjAMBgNVBAoTBU15U1NMMSswKQYDVQQLEyJNeVNTTCBU
/// ZXN0IFJTQSAtIEZvciB0ZXN0IHVzZSBvbmx5MRIwEAYDVQQDEwlNeVNTTC5jb20w
/// HhcNMjMwODA5MDQ1NDU3WhcNMjYwODA4MDQ1NDU3WjAsMQswCQYDVQQGEwJDTjEd
/// MBsGA1UEAxMUYWxpY2xvdWQtcHJvdmlkZXIuY24wggEiMA0GCSqGSIb3DQEBAQUA
/// A4IBDwAwggEKAoIBAQDdkot9e0pMCTPAtA29Sz5sF+aPT/l9+3sOnQeJ1kKLNkqK
/// iQgwADexoAqlmTaZM03gh/GnkqPw9gxN/fJHWdVzxE03Fs8bKgMdS6cf0v/xArrQ
/// zm6N4vmsbuE8SX2eu303PAsyBMqPByTODZ5i+5LkZcrxMFQsbA3xnBouzS5e+T+a
/// 7YTyyVv5WDy871/sdRAYTfnUttdnqkKGeMKgQgRlJ2pDk5/k2iwmQmSh/wbk465+
/// 1U5w2npPYGPvGAkzl7RRc4/VckqlV8P0cmgguqIRyllJwFEnvcpqpOHTxBOBq9iZ
/// 4b/h7ynrfB/GbAw574eSEl0gzLBW60bT9YedbTeXAgMBAAGjgdkwgdYwDgYDVR0P
/// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSME
/// GDAWgBQogSYF0TQaP8FzD7uTzxUcPwO/fzBjBggrBgEFBQcBAQRXMFUwIQYIKwYB
/// BQUHMAGGFWh0dHA6Ly9vY3NwLm15c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0cDov
/// L2NhLm15c3NsLmNvbS9teXNzbHRlc3Ryc2EuY3J0MB8GA1UdEQQYMBaCFGFsaWNs
/// b3VkLXByb3ZpZGVyLmNuMA0GCSqGSIb3DQEBCwUAA4IBAQCwUBeznv6cAjcTLCDb
/// SSvgkM9HFcbWnuGS8Nf5P4YfmSs52VuHZyjzwphjAU6B/danI/nMdZe52PXyvjVV
/// 02Y8ld/tMpqPV5SpaOadLtdg6TGBNJieOAt9doM8WNEgq/JycAL9ivIOjChUetZf
/// ZEV7HDIgiHSpqAPWMZYL71MS/p5zYkyOnPqmGyLNdi1neotwVCQopQXRNC2iLlVV
/// yQONfXH5iijqr1iTWkB0ESK/xBt1PB655PlTjzFQUOovE1SyoQS8K3u7TP6+BqtD
/// G9TYNTNZvxl5I/iU/KdWVip+qJbxRA8Skc8gHkkzeIEStw3l5cjnrp9h7EhnhkOh
/// ltGN
/// -----END CERTIFICATE-----
/// """,
///         key="""-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEA3ZKLfXtKTAkzwLQNvUs+bBfmj0/5fft7Dp0HidZCizZKiokI
/// MAA3saAKpZk2mTNN4Ifxp5Kj8PYMTf3yR1nVc8RNNxbPGyoDHUunH9L/8QK60M5u
/// jeL5rG7hPEl9nrt9NzwLMgTKjwckzg2eYvuS5GXK8TBULGwN8ZwaLs0uXvk/mu2E
/// 8slb+Vg8vO9f7HUQGE351LbXZ6pChnjCoEIEZSdqQ5Of5NosJkJkof8G5OOuftVO
/// cNp6T2Bj7xgJM5e0UXOP1XJKpVfD9HJoILqiEcpZScBRJ73KaqTh08QTgavYmeG/
/// 4e8p63wfxmwMOe+HkhJdIMywVutG0/WHnW03lwIDAQABAoIBAQCe5rHS09B8pzzO
/// PlJ8JrIlox5eOOScTPX7jPITD+25GL5si8mrYvyODlCUYkSdqgV3uQa9PpUEAfDh
/// HfXa5boGxAj8MQdmW8LQB6lbUV7r4SFJDkKKzvRvjTVKnwnQBHXQXudIf9ckq+Lh
/// QzMLmY/G7JmWTyqOkQ+O7nx4g/11bcU7uQrQdvWPfc0+IiT1TYQdyLQ/Chlj3RF/
/// iwF8ZL2sfKF+Z5O49+Q6cXvUcQOvqtkIXbQijayyVNBMJwDB7aOZRA7JBNj9/ib6
/// N0iTo81dJVz/nnpbWRaFTVinIsDF1heDfQ1qDx06T/Mpi6pjoWjRUcyIHEbZJTel
/// 0nXDJD1BAoGBAPZB/PN8MP+o9gkf2jnoU9LzctDJrQwD1J2XElq4RomimPIMqDQP
/// 5TRAJThf0O0X4Mv2n9EzV457OpJL+fz9htRWEYogWl9bkbzZ1AoX4K/acuGeawTT
/// YEhPjJ2ZETsBsCeDkDDuHHzYwRQv+EfoXH36z9PBDxG1ZDb7kWwAILXdAoGBAOZW
/// jXG7m4I7cxUtXGtjwydh4K7nwH/5QoH2m928HM2AT48eQCl3CMQ089+qeJGgfHQv
/// GyVOO/FGhcFsFi10FMQ7IlwWgZODg64qnrNhi4zbV1M2wKem1T2dlEpkd82EFdnS
/// GYRIEkFORMxEDyzx3Th2TajpWC8YKKG3Tnm0bQ4DAoGBAIZTEEswHvoVi78GZN7Z
/// X3/d028X0xCOtlcPpK9ffPpuesbtKILdeMS7iJHrkecB81jOOfa+7q+FgDl0v/PD
/// xtvj5sVVSHZjWGeO2h53T9QccDWpV+7V7dsDqUv9xmxNS20CUpCeEWP4R7lfQSrY
/// EDuXp+11jWa3buae6n/iwfTxAoGABEYW2cVhXUk9GWd+D4AKXvCx+ozSRY2abk7l
/// FXgoEKgQ0db92ccboohY/g1rr0gLBxzYpBiPhCqK0MvwnWdJ+1odiRfhz5rhFpoz
/// 16A3tqVbOXAKoxG1Yy9JURgMIQQSY7hCQPIVZKDPJfsdTPgv4pxPVJL/z9/i4R1F
/// l3yBiYECgYEA0+vpzL24nHZYdwgBF4qbmYhv8baRi07/BNgV1+d6vESuO/MwwoE/
/// 2UZ9Drf5yoX2Bvi5/vVMbyc7cSluO7icPBkl0D8F7E3x0v5mzwPxtpR8BTRoJKOL
/// /rMdLscMz2VQsL5DJd/9OZg60fHRaRtWtV0afXzL5zUxnfDLot24IG4=
/// -----END RSA PRIVATE KEY-----
/// """))
/// default_listener = alicloud.ga.Listener("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     name=name,
///     protocol="HTTPS",
///     port_ranges=[{
///         "from_port": 8080,
///         "to_port": 8080,
///     }],
///     certificates=[{
///         "id": std.join_output(separator="-",
///             input=[
///                 default_service_certificate[1].id,
///                 region,
///             ]).apply(lambda invoke: invoke.result),
///     }])
/// domain = "alicloud-provider.cn"
/// default_additional_certificate = alicloud.ga.AdditionalCertificate("default",
///     certificate_id=std.join_output(separator="-",
///         input=[
///             default_service_certificate[1].id,
///             region,
///         ]).apply(lambda invoke: invoke.result),
///     domain=domain,
///     accelerator_id=default_listener.accelerator_id,
///     listener_id=default_listener.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Ga.GetAccelerators.Invoke(new()
///     {
///         Status = "active",
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Ga.BandwidthPackage("default", new()
///     {
///         Bandwidth = 100,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         PaymentType = "PayAsYouGo",
///         BillingType = "PayBy95",
///         Ratio = 30,
///         BandwidthPackageName = name,
///         AutoPay = true,
///         AutoUseCoupon = true,
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = @default.Apply(@default => @default.Apply(getAcceleratorsResult => getAcceleratorsResult.Ids[0])),
///         BandwidthPackageId = defaultBandwidthPackage.Id,
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
///                     range.Value,
///                 },
///             }).Apply(invoke => invoke.Result),
///             Cert = @"-----BEGIN CERTIFICATE-----
/// MIID7zCCAtegAwIBAgIRAKi2/Fx1cUTyhV839x42ockwDQYJKoZIhvcNAQELBQAw
/// XjELMAkGA1UEBhMCQ04xDjAMBgNVBAoTBU15U1NMMSswKQYDVQQLEyJNeVNTTCBU
/// ZXN0IFJTQSAtIEZvciB0ZXN0IHVzZSBvbmx5MRIwEAYDVQQDEwlNeVNTTC5jb20w
/// HhcNMjMwODA5MDQ1NDU3WhcNMjYwODA4MDQ1NDU3WjAsMQswCQYDVQQGEwJDTjEd
/// MBsGA1UEAxMUYWxpY2xvdWQtcHJvdmlkZXIuY24wggEiMA0GCSqGSIb3DQEBAQUA
/// A4IBDwAwggEKAoIBAQDdkot9e0pMCTPAtA29Sz5sF+aPT/l9+3sOnQeJ1kKLNkqK
/// iQgwADexoAqlmTaZM03gh/GnkqPw9gxN/fJHWdVzxE03Fs8bKgMdS6cf0v/xArrQ
/// zm6N4vmsbuE8SX2eu303PAsyBMqPByTODZ5i+5LkZcrxMFQsbA3xnBouzS5e+T+a
/// 7YTyyVv5WDy871/sdRAYTfnUttdnqkKGeMKgQgRlJ2pDk5/k2iwmQmSh/wbk465+
/// 1U5w2npPYGPvGAkzl7RRc4/VckqlV8P0cmgguqIRyllJwFEnvcpqpOHTxBOBq9iZ
/// 4b/h7ynrfB/GbAw574eSEl0gzLBW60bT9YedbTeXAgMBAAGjgdkwgdYwDgYDVR0P
/// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSME
/// GDAWgBQogSYF0TQaP8FzD7uTzxUcPwO/fzBjBggrBgEFBQcBAQRXMFUwIQYIKwYB
/// BQUHMAGGFWh0dHA6Ly9vY3NwLm15c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0cDov
/// L2NhLm15c3NsLmNvbS9teXNzbHRlc3Ryc2EuY3J0MB8GA1UdEQQYMBaCFGFsaWNs
/// b3VkLXByb3ZpZGVyLmNuMA0GCSqGSIb3DQEBCwUAA4IBAQCwUBeznv6cAjcTLCDb
/// SSvgkM9HFcbWnuGS8Nf5P4YfmSs52VuHZyjzwphjAU6B/danI/nMdZe52PXyvjVV
/// 02Y8ld/tMpqPV5SpaOadLtdg6TGBNJieOAt9doM8WNEgq/JycAL9ivIOjChUetZf
/// ZEV7HDIgiHSpqAPWMZYL71MS/p5zYkyOnPqmGyLNdi1neotwVCQopQXRNC2iLlVV
/// yQONfXH5iijqr1iTWkB0ESK/xBt1PB655PlTjzFQUOovE1SyoQS8K3u7TP6+BqtD
/// G9TYNTNZvxl5I/iU/KdWVip+qJbxRA8Skc8gHkkzeIEStw3l5cjnrp9h7EhnhkOh
/// ltGN
/// -----END CERTIFICATE-----
/// ",
///             Key = @"-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEA3ZKLfXtKTAkzwLQNvUs+bBfmj0/5fft7Dp0HidZCizZKiokI
/// MAA3saAKpZk2mTNN4Ifxp5Kj8PYMTf3yR1nVc8RNNxbPGyoDHUunH9L/8QK60M5u
/// jeL5rG7hPEl9nrt9NzwLMgTKjwckzg2eYvuS5GXK8TBULGwN8ZwaLs0uXvk/mu2E
/// 8slb+Vg8vO9f7HUQGE351LbXZ6pChnjCoEIEZSdqQ5Of5NosJkJkof8G5OOuftVO
/// cNp6T2Bj7xgJM5e0UXOP1XJKpVfD9HJoILqiEcpZScBRJ73KaqTh08QTgavYmeG/
/// 4e8p63wfxmwMOe+HkhJdIMywVutG0/WHnW03lwIDAQABAoIBAQCe5rHS09B8pzzO
/// PlJ8JrIlox5eOOScTPX7jPITD+25GL5si8mrYvyODlCUYkSdqgV3uQa9PpUEAfDh
/// HfXa5boGxAj8MQdmW8LQB6lbUV7r4SFJDkKKzvRvjTVKnwnQBHXQXudIf9ckq+Lh
/// QzMLmY/G7JmWTyqOkQ+O7nx4g/11bcU7uQrQdvWPfc0+IiT1TYQdyLQ/Chlj3RF/
/// iwF8ZL2sfKF+Z5O49+Q6cXvUcQOvqtkIXbQijayyVNBMJwDB7aOZRA7JBNj9/ib6
/// N0iTo81dJVz/nnpbWRaFTVinIsDF1heDfQ1qDx06T/Mpi6pjoWjRUcyIHEbZJTel
/// 0nXDJD1BAoGBAPZB/PN8MP+o9gkf2jnoU9LzctDJrQwD1J2XElq4RomimPIMqDQP
/// 5TRAJThf0O0X4Mv2n9EzV457OpJL+fz9htRWEYogWl9bkbzZ1AoX4K/acuGeawTT
/// YEhPjJ2ZETsBsCeDkDDuHHzYwRQv+EfoXH36z9PBDxG1ZDb7kWwAILXdAoGBAOZW
/// jXG7m4I7cxUtXGtjwydh4K7nwH/5QoH2m928HM2AT48eQCl3CMQ089+qeJGgfHQv
/// GyVOO/FGhcFsFi10FMQ7IlwWgZODg64qnrNhi4zbV1M2wKem1T2dlEpkd82EFdnS
/// GYRIEkFORMxEDyzx3Th2TajpWC8YKKG3Tnm0bQ4DAoGBAIZTEEswHvoVi78GZN7Z
/// X3/d028X0xCOtlcPpK9ffPpuesbtKILdeMS7iJHrkecB81jOOfa+7q+FgDl0v/PD
/// xtvj5sVVSHZjWGeO2h53T9QccDWpV+7V7dsDqUv9xmxNS20CUpCeEWP4R7lfQSrY
/// EDuXp+11jWa3buae6n/iwfTxAoGABEYW2cVhXUk9GWd+D4AKXvCx+ozSRY2abk7l
/// FXgoEKgQ0db92ccboohY/g1rr0gLBxzYpBiPhCqK0MvwnWdJ+1odiRfhz5rhFpoz
/// 16A3tqVbOXAKoxG1Yy9JURgMIQQSY7hCQPIVZKDPJfsdTPgv4pxPVJL/z9/i4R1F
/// l3yBiYECgYEA0+vpzL24nHZYdwgBF4qbmYhv8baRi07/BNgV1+d6vESuO/MwwoE/
/// 2UZ9Drf5yoX2Bvi5/vVMbyc7cSluO7icPBkl0D8F7E3x0v5mzwPxtpR8BTRoJKOL
/// /rMdLscMz2VQsL5DJd/9OZg60fHRaRtWtV0afXzL5zUxnfDLot24IG4=
/// -----END RSA PRIVATE KEY-----
/// ",
///         }));
///     }
///     var defaultListener = new AliCloud.Ga.Listener("default", new()
///     {
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///         Name = name,
///         Protocol = "HTTPS",
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 8080,
///                 ToPort = 8080,
///             },
///         },
///         Certificates = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerCertificateArgs
///             {
///                 Id = Std.Join.Invoke(new()
///                 {
///                     Separator = "-",
///                     Input = new[]
///                     {
///                         defaultServiceCertificate[1].Id,
///                         region,
///                     },
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///     });
///
///     var domain = "alicloud-provider.cn";
///
///     var defaultAdditionalCertificate = new AliCloud.Ga.AdditionalCertificate("default", new()
///     {
///         CertificateId = Std.Join.Invoke(new()
///         {
///             Separator = "-",
///             Input = new[]
///             {
///                 defaultServiceCertificate[1].Id,
///                 region,
///             },
///         }).Apply(invoke => invoke.Result),
///         Domain = domain,
///         AcceleratorId = defaultListener.AcceleratorId,
///         ListenerId = defaultListener.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ga.GetAccelerators(ctx, &ga.GetAcceleratorsArgs{
/// 			Status: pulumi.StringRef("active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:            pulumi.Int(100),
/// 			Type:                 pulumi.String("Basic"),
/// 			BandwidthType:        pulumi.String("Basic"),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			BillingType:          pulumi.String("PayBy95"),
/// 			Ratio:                pulumi.Int(30),
/// 			BandwidthPackageName: pulumi.String(name),
/// 			AutoPay:              pulumi.Bool(true),
/// 			AutoUseCoupon:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      pulumi.String(_default.Ids[0]),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: "-",
/// 			Input: []interface{}{
/// 				name,
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
/// 				CertificateName: pulumi.String(invokeJoin.Result),
/// 				Cert: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIID7zCCAtegAwIBAgIRAKi2/Fx1cUTyhV839x42ockwDQYJKoZIhvcNAQELBQAw
/// XjELMAkGA1UEBhMCQ04xDjAMBgNVBAoTBU15U1NMMSswKQYDVQQLEyJNeVNTTCBU
/// ZXN0IFJTQSAtIEZvciB0ZXN0IHVzZSBvbmx5MRIwEAYDVQQDEwlNeVNTTC5jb20w
/// HhcNMjMwODA5MDQ1NDU3WhcNMjYwODA4MDQ1NDU3WjAsMQswCQYDVQQGEwJDTjEd
/// MBsGA1UEAxMUYWxpY2xvdWQtcHJvdmlkZXIuY24wggEiMA0GCSqGSIb3DQEBAQUA
/// A4IBDwAwggEKAoIBAQDdkot9e0pMCTPAtA29Sz5sF+aPT/l9+3sOnQeJ1kKLNkqK
/// iQgwADexoAqlmTaZM03gh/GnkqPw9gxN/fJHWdVzxE03Fs8bKgMdS6cf0v/xArrQ
/// zm6N4vmsbuE8SX2eu303PAsyBMqPByTODZ5i+5LkZcrxMFQsbA3xnBouzS5e+T+a
/// 7YTyyVv5WDy871/sdRAYTfnUttdnqkKGeMKgQgRlJ2pDk5/k2iwmQmSh/wbk465+
/// 1U5w2npPYGPvGAkzl7RRc4/VckqlV8P0cmgguqIRyllJwFEnvcpqpOHTxBOBq9iZ
/// 4b/h7ynrfB/GbAw574eSEl0gzLBW60bT9YedbTeXAgMBAAGjgdkwgdYwDgYDVR0P
/// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSME
/// GDAWgBQogSYF0TQaP8FzD7uTzxUcPwO/fzBjBggrBgEFBQcBAQRXMFUwIQYIKwYB
/// BQUHMAGGFWh0dHA6Ly9vY3NwLm15c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0cDov
/// L2NhLm15c3NsLmNvbS9teXNzbHRlc3Ryc2EuY3J0MB8GA1UdEQQYMBaCFGFsaWNs
/// b3VkLXByb3ZpZGVyLmNuMA0GCSqGSIb3DQEBCwUAA4IBAQCwUBeznv6cAjcTLCDb
/// SSvgkM9HFcbWnuGS8Nf5P4YfmSs52VuHZyjzwphjAU6B/danI/nMdZe52PXyvjVV
/// 02Y8ld/tMpqPV5SpaOadLtdg6TGBNJieOAt9doM8WNEgq/JycAL9ivIOjChUetZf
/// ZEV7HDIgiHSpqAPWMZYL71MS/p5zYkyOnPqmGyLNdi1neotwVCQopQXRNC2iLlVV
/// yQONfXH5iijqr1iTWkB0ESK/xBt1PB655PlTjzFQUOovE1SyoQS8K3u7TP6+BqtD
/// G9TYNTNZvxl5I/iU/KdWVip+qJbxRA8Skc8gHkkzeIEStw3l5cjnrp9h7EhnhkOh
/// ltGN
/// -----END CERTIFICATE-----
/// `),
/// 				Key: pulumi.String(`-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEA3ZKLfXtKTAkzwLQNvUs+bBfmj0/5fft7Dp0HidZCizZKiokI
/// MAA3saAKpZk2mTNN4Ifxp5Kj8PYMTf3yR1nVc8RNNxbPGyoDHUunH9L/8QK60M5u
/// jeL5rG7hPEl9nrt9NzwLMgTKjwckzg2eYvuS5GXK8TBULGwN8ZwaLs0uXvk/mu2E
/// 8slb+Vg8vO9f7HUQGE351LbXZ6pChnjCoEIEZSdqQ5Of5NosJkJkof8G5OOuftVO
/// cNp6T2Bj7xgJM5e0UXOP1XJKpVfD9HJoILqiEcpZScBRJ73KaqTh08QTgavYmeG/
/// 4e8p63wfxmwMOe+HkhJdIMywVutG0/WHnW03lwIDAQABAoIBAQCe5rHS09B8pzzO
/// PlJ8JrIlox5eOOScTPX7jPITD+25GL5si8mrYvyODlCUYkSdqgV3uQa9PpUEAfDh
/// HfXa5boGxAj8MQdmW8LQB6lbUV7r4SFJDkKKzvRvjTVKnwnQBHXQXudIf9ckq+Lh
/// QzMLmY/G7JmWTyqOkQ+O7nx4g/11bcU7uQrQdvWPfc0+IiT1TYQdyLQ/Chlj3RF/
/// iwF8ZL2sfKF+Z5O49+Q6cXvUcQOvqtkIXbQijayyVNBMJwDB7aOZRA7JBNj9/ib6
/// N0iTo81dJVz/nnpbWRaFTVinIsDF1heDfQ1qDx06T/Mpi6pjoWjRUcyIHEbZJTel
/// 0nXDJD1BAoGBAPZB/PN8MP+o9gkf2jnoU9LzctDJrQwD1J2XElq4RomimPIMqDQP
/// 5TRAJThf0O0X4Mv2n9EzV457OpJL+fz9htRWEYogWl9bkbzZ1AoX4K/acuGeawTT
/// YEhPjJ2ZETsBsCeDkDDuHHzYwRQv+EfoXH36z9PBDxG1ZDb7kWwAILXdAoGBAOZW
/// jXG7m4I7cxUtXGtjwydh4K7nwH/5QoH2m928HM2AT48eQCl3CMQ089+qeJGgfHQv
/// GyVOO/FGhcFsFi10FMQ7IlwWgZODg64qnrNhi4zbV1M2wKem1T2dlEpkd82EFdnS
/// GYRIEkFORMxEDyzx3Th2TajpWC8YKKG3Tnm0bQ4DAoGBAIZTEEswHvoVi78GZN7Z
/// X3/d028X0xCOtlcPpK9ffPpuesbtKILdeMS7iJHrkecB81jOOfa+7q+FgDl0v/PD
/// xtvj5sVVSHZjWGeO2h53T9QccDWpV+7V7dsDqUv9xmxNS20CUpCeEWP4R7lfQSrY
/// EDuXp+11jWa3buae6n/iwfTxAoGABEYW2cVhXUk9GWd+D4AKXvCx+ozSRY2abk7l
/// FXgoEKgQ0db92ccboohY/g1rr0gLBxzYpBiPhCqK0MvwnWdJ+1odiRfhz5rhFpoz
/// 16A3tqVbOXAKoxG1Yy9JURgMIQQSY7hCQPIVZKDPJfsdTPgv4pxPVJL/z9/i4R1F
/// l3yBiYECgYEA0+vpzL24nHZYdwgBF4qbmYhv8baRi07/BNgV1+d6vESuO/MwwoE/
/// 2UZ9Drf5yoX2Bvi5/vVMbyc7cSluO7icPBkl0D8F7E3x0v5mzwPxtpR8BTRoJKOL
/// /rMdLscMz2VQsL5DJd/9OZg60fHRaRtWtV0afXzL5zUxnfDLot24IG4=
/// -----END RSA PRIVATE KEY-----
/// `),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultServiceCertificate = append(defaultServiceCertificate, __res)
/// 		}
/// 		defaultListener, err := ga.NewListener(ctx, "default", &ga.ListenerArgs{
/// 			AcceleratorId: defaultBandwidthPackageAttachment.AcceleratorId,
/// 			Name:          pulumi.String(name),
/// 			Protocol:      pulumi.String("HTTPS"),
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(8080),
/// 					ToPort:   pulumi.Int(8080),
/// 				},
/// 			},
/// 			Certificates: ga.ListenerCertificateArray{
/// 				&ga.ListenerCertificateArgs{
/// 					Id: std.JoinOutput(ctx, std.JoinOutputArgs{
/// 						Separator: pulumi.String("-"),
/// 						Input: pulumi.StringArray{
/// 							defaultServiceCertificate[1].ID(),
/// 							pulumi.String(region),
/// 						},
/// 					}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 						return invoke.Result, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		domain := "alicloud-provider.cn"
/// 		_, err = ga.NewAdditionalCertificate(ctx, "default", &ga.AdditionalCertificateArgs{
/// 			CertificateId: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("-"),
/// 				Input: pulumi.StringArray{
/// 					defaultServiceCertificate[1].ID(),
/// 					pulumi.String(region),
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Domain:        pulumi.String(domain),
/// 			AcceleratorId: defaultListener.AcceleratorId,
/// 			ListenerId:    defaultListener.ID(),
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAcceleratorsArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.cas.ServiceCertificate;
/// import com.pulumi.alicloud.cas.ServiceCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerCertificateArgs;
/// import com.pulumi.alicloud.ga.AdditionalCertificate;
/// import com.pulumi.alicloud.ga.AdditionalCertificateArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var name = config.get("name").orElse("tf-example");
///         final var default = GaFunctions.getAccelerators(GetAcceleratorsArgs.builder()
///             .status("active")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .bandwidthPackageName(name)
///             .autoPay(true)
///             .autoUseCoupon(true)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(default_.ids()[0])
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new ServiceCertificate("defaultServiceCertificate-" + i, ServiceCertificateArgs.builder()
///                 .certificateName(StdFunctions.join(JoinArgs.builder()
///                     .separator("-")
///                     .input(
///                         name,
///                         range.value())
///                     .build()).result())
///                 .cert("""
/// -----BEGIN CERTIFICATE-----
/// MIID7zCCAtegAwIBAgIRAKi2/Fx1cUTyhV839x42ockwDQYJKoZIhvcNAQELBQAw
/// XjELMAkGA1UEBhMCQ04xDjAMBgNVBAoTBU15U1NMMSswKQYDVQQLEyJNeVNTTCBU
/// ZXN0IFJTQSAtIEZvciB0ZXN0IHVzZSBvbmx5MRIwEAYDVQQDEwlNeVNTTC5jb20w
/// HhcNMjMwODA5MDQ1NDU3WhcNMjYwODA4MDQ1NDU3WjAsMQswCQYDVQQGEwJDTjEd
/// MBsGA1UEAxMUYWxpY2xvdWQtcHJvdmlkZXIuY24wggEiMA0GCSqGSIb3DQEBAQUA
/// A4IBDwAwggEKAoIBAQDdkot9e0pMCTPAtA29Sz5sF+aPT/l9+3sOnQeJ1kKLNkqK
/// iQgwADexoAqlmTaZM03gh/GnkqPw9gxN/fJHWdVzxE03Fs8bKgMdS6cf0v/xArrQ
/// zm6N4vmsbuE8SX2eu303PAsyBMqPByTODZ5i+5LkZcrxMFQsbA3xnBouzS5e+T+a
/// 7YTyyVv5WDy871/sdRAYTfnUttdnqkKGeMKgQgRlJ2pDk5/k2iwmQmSh/wbk465+
/// 1U5w2npPYGPvGAkzl7RRc4/VckqlV8P0cmgguqIRyllJwFEnvcpqpOHTxBOBq9iZ
/// 4b/h7ynrfB/GbAw574eSEl0gzLBW60bT9YedbTeXAgMBAAGjgdkwgdYwDgYDVR0P
/// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSME
/// GDAWgBQogSYF0TQaP8FzD7uTzxUcPwO/fzBjBggrBgEFBQcBAQRXMFUwIQYIKwYB
/// BQUHMAGGFWh0dHA6Ly9vY3NwLm15c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0cDov
/// L2NhLm15c3NsLmNvbS9teXNzbHRlc3Ryc2EuY3J0MB8GA1UdEQQYMBaCFGFsaWNs
/// b3VkLXByb3ZpZGVyLmNuMA0GCSqGSIb3DQEBCwUAA4IBAQCwUBeznv6cAjcTLCDb
/// SSvgkM9HFcbWnuGS8Nf5P4YfmSs52VuHZyjzwphjAU6B/danI/nMdZe52PXyvjVV
/// 02Y8ld/tMpqPV5SpaOadLtdg6TGBNJieOAt9doM8WNEgq/JycAL9ivIOjChUetZf
/// ZEV7HDIgiHSpqAPWMZYL71MS/p5zYkyOnPqmGyLNdi1neotwVCQopQXRNC2iLlVV
/// yQONfXH5iijqr1iTWkB0ESK/xBt1PB655PlTjzFQUOovE1SyoQS8K3u7TP6+BqtD
/// G9TYNTNZvxl5I/iU/KdWVip+qJbxRA8Skc8gHkkzeIEStw3l5cjnrp9h7EhnhkOh
/// ltGN
/// -----END CERTIFICATE-----
///                 """)
///                 .key("""
/// -----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEA3ZKLfXtKTAkzwLQNvUs+bBfmj0/5fft7Dp0HidZCizZKiokI
/// MAA3saAKpZk2mTNN4Ifxp5Kj8PYMTf3yR1nVc8RNNxbPGyoDHUunH9L/8QK60M5u
/// jeL5rG7hPEl9nrt9NzwLMgTKjwckzg2eYvuS5GXK8TBULGwN8ZwaLs0uXvk/mu2E
/// 8slb+Vg8vO9f7HUQGE351LbXZ6pChnjCoEIEZSdqQ5Of5NosJkJkof8G5OOuftVO
/// cNp6T2Bj7xgJM5e0UXOP1XJKpVfD9HJoILqiEcpZScBRJ73KaqTh08QTgavYmeG/
/// 4e8p63wfxmwMOe+HkhJdIMywVutG0/WHnW03lwIDAQABAoIBAQCe5rHS09B8pzzO
/// PlJ8JrIlox5eOOScTPX7jPITD+25GL5si8mrYvyODlCUYkSdqgV3uQa9PpUEAfDh
/// HfXa5boGxAj8MQdmW8LQB6lbUV7r4SFJDkKKzvRvjTVKnwnQBHXQXudIf9ckq+Lh
/// QzMLmY/G7JmWTyqOkQ+O7nx4g/11bcU7uQrQdvWPfc0+IiT1TYQdyLQ/Chlj3RF/
/// iwF8ZL2sfKF+Z5O49+Q6cXvUcQOvqtkIXbQijayyVNBMJwDB7aOZRA7JBNj9/ib6
/// N0iTo81dJVz/nnpbWRaFTVinIsDF1heDfQ1qDx06T/Mpi6pjoWjRUcyIHEbZJTel
/// 0nXDJD1BAoGBAPZB/PN8MP+o9gkf2jnoU9LzctDJrQwD1J2XElq4RomimPIMqDQP
/// 5TRAJThf0O0X4Mv2n9EzV457OpJL+fz9htRWEYogWl9bkbzZ1AoX4K/acuGeawTT
/// YEhPjJ2ZETsBsCeDkDDuHHzYwRQv+EfoXH36z9PBDxG1ZDb7kWwAILXdAoGBAOZW
/// jXG7m4I7cxUtXGtjwydh4K7nwH/5QoH2m928HM2AT48eQCl3CMQ089+qeJGgfHQv
/// GyVOO/FGhcFsFi10FMQ7IlwWgZODg64qnrNhi4zbV1M2wKem1T2dlEpkd82EFdnS
/// GYRIEkFORMxEDyzx3Th2TajpWC8YKKG3Tnm0bQ4DAoGBAIZTEEswHvoVi78GZN7Z
/// X3/d028X0xCOtlcPpK9ffPpuesbtKILdeMS7iJHrkecB81jOOfa+7q+FgDl0v/PD
/// xtvj5sVVSHZjWGeO2h53T9QccDWpV+7V7dsDqUv9xmxNS20CUpCeEWP4R7lfQSrY
/// EDuXp+11jWa3buae6n/iwfTxAoGABEYW2cVhXUk9GWd+D4AKXvCx+ozSRY2abk7l
/// FXgoEKgQ0db92ccboohY/g1rr0gLBxzYpBiPhCqK0MvwnWdJ+1odiRfhz5rhFpoz
/// 16A3tqVbOXAKoxG1Yy9JURgMIQQSY7hCQPIVZKDPJfsdTPgv4pxPVJL/z9/i4R1F
/// l3yBiYECgYEA0+vpzL24nHZYdwgBF4qbmYhv8baRi07/BNgV1+d6vESuO/MwwoE/
/// 2UZ9Drf5yoX2Bvi5/vVMbyc7cSluO7icPBkl0D8F7E3x0v5mzwPxtpR8BTRoJKOL
/// /rMdLscMz2VQsL5DJd/9OZg60fHRaRtWtV0afXzL5zUxnfDLot24IG4=
/// -----END RSA PRIVATE KEY-----
///                 """)
///                 .build());
///
///
/// }
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .name(name)
///             .protocol("HTTPS")
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(8080)
///                 .toPort(8080)
///                 .build())
///             .certificates(ListenerCertificateArgs.builder()
///                 .id(StdFunctions.join(JoinArgs.builder()
///                     .separator("-")
///                     .input(
///                         defaultServiceCertificate[1].id(),
///                         region)
///                     .build()).applyValue(_invoke -> _invoke.result()))
///                 .build())
///             .build());
///
///         final var domain = "alicloud-provider.cn";
///
///         var defaultAdditionalCertificate = new AdditionalCertificate("defaultAdditionalCertificate", AdditionalCertificateArgs.builder()
///             .certificateId(StdFunctions.join(JoinArgs.builder()
///                 .separator("-")
///                 .input(
///                     defaultServiceCertificate[1].id(),
///                     region)
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .domain(domain)
///             .acceleratorId(defaultListener.acceleratorId())
///             .listenerId(defaultListener.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 100
///       type: Basic
///       bandwidthType: Basic
///       paymentType: PayAsYouGo
///       billingType: PayBy95
///       ratio: 30
///       bandwidthPackageName: ${name}
///       autoPay: true
///       autoUseCoupon: true
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${default.ids[0]}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultServiceCertificate:
///     type: alicloud:cas:ServiceCertificate
///     name: default
///     properties:
///       certificateName:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: '-'
///             input:
///               - ${name}
///               - ${range.value}
///           return: result
///       cert: |
///         -----BEGIN CERTIFICATE-----
///         MIID7zCCAtegAwIBAgIRAKi2/Fx1cUTyhV839x42ockwDQYJKoZIhvcNAQELBQAw
///         XjELMAkGA1UEBhMCQ04xDjAMBgNVBAoTBU15U1NMMSswKQYDVQQLEyJNeVNTTCBU
///         ZXN0IFJTQSAtIEZvciB0ZXN0IHVzZSBvbmx5MRIwEAYDVQQDEwlNeVNTTC5jb20w
///         HhcNMjMwODA5MDQ1NDU3WhcNMjYwODA4MDQ1NDU3WjAsMQswCQYDVQQGEwJDTjEd
///         MBsGA1UEAxMUYWxpY2xvdWQtcHJvdmlkZXIuY24wggEiMA0GCSqGSIb3DQEBAQUA
///         A4IBDwAwggEKAoIBAQDdkot9e0pMCTPAtA29Sz5sF+aPT/l9+3sOnQeJ1kKLNkqK
///         iQgwADexoAqlmTaZM03gh/GnkqPw9gxN/fJHWdVzxE03Fs8bKgMdS6cf0v/xArrQ
///         zm6N4vmsbuE8SX2eu303PAsyBMqPByTODZ5i+5LkZcrxMFQsbA3xnBouzS5e+T+a
///         7YTyyVv5WDy871/sdRAYTfnUttdnqkKGeMKgQgRlJ2pDk5/k2iwmQmSh/wbk465+
///         1U5w2npPYGPvGAkzl7RRc4/VckqlV8P0cmgguqIRyllJwFEnvcpqpOHTxBOBq9iZ
///         4b/h7ynrfB/GbAw574eSEl0gzLBW60bT9YedbTeXAgMBAAGjgdkwgdYwDgYDVR0P
///         AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSME
///         GDAWgBQogSYF0TQaP8FzD7uTzxUcPwO/fzBjBggrBgEFBQcBAQRXMFUwIQYIKwYB
///         BQUHMAGGFWh0dHA6Ly9vY3NwLm15c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0cDov
///         L2NhLm15c3NsLmNvbS9teXNzbHRlc3Ryc2EuY3J0MB8GA1UdEQQYMBaCFGFsaWNs
///         b3VkLXByb3ZpZGVyLmNuMA0GCSqGSIb3DQEBCwUAA4IBAQCwUBeznv6cAjcTLCDb
///         SSvgkM9HFcbWnuGS8Nf5P4YfmSs52VuHZyjzwphjAU6B/danI/nMdZe52PXyvjVV
///         02Y8ld/tMpqPV5SpaOadLtdg6TGBNJieOAt9doM8WNEgq/JycAL9ivIOjChUetZf
///         ZEV7HDIgiHSpqAPWMZYL71MS/p5zYkyOnPqmGyLNdi1neotwVCQopQXRNC2iLlVV
///         yQONfXH5iijqr1iTWkB0ESK/xBt1PB655PlTjzFQUOovE1SyoQS8K3u7TP6+BqtD
///         G9TYNTNZvxl5I/iU/KdWVip+qJbxRA8Skc8gHkkzeIEStw3l5cjnrp9h7EhnhkOh
///         ltGN
///         -----END CERTIFICATE-----
///       key: |
///         -----BEGIN RSA PRIVATE KEY-----
///         MIIEpQIBAAKCAQEA3ZKLfXtKTAkzwLQNvUs+bBfmj0/5fft7Dp0HidZCizZKiokI
///         MAA3saAKpZk2mTNN4Ifxp5Kj8PYMTf3yR1nVc8RNNxbPGyoDHUunH9L/8QK60M5u
///         jeL5rG7hPEl9nrt9NzwLMgTKjwckzg2eYvuS5GXK8TBULGwN8ZwaLs0uXvk/mu2E
///         8slb+Vg8vO9f7HUQGE351LbXZ6pChnjCoEIEZSdqQ5Of5NosJkJkof8G5OOuftVO
///         cNp6T2Bj7xgJM5e0UXOP1XJKpVfD9HJoILqiEcpZScBRJ73KaqTh08QTgavYmeG/
///         4e8p63wfxmwMOe+HkhJdIMywVutG0/WHnW03lwIDAQABAoIBAQCe5rHS09B8pzzO
///         PlJ8JrIlox5eOOScTPX7jPITD+25GL5si8mrYvyODlCUYkSdqgV3uQa9PpUEAfDh
///         HfXa5boGxAj8MQdmW8LQB6lbUV7r4SFJDkKKzvRvjTVKnwnQBHXQXudIf9ckq+Lh
///         QzMLmY/G7JmWTyqOkQ+O7nx4g/11bcU7uQrQdvWPfc0+IiT1TYQdyLQ/Chlj3RF/
///         iwF8ZL2sfKF+Z5O49+Q6cXvUcQOvqtkIXbQijayyVNBMJwDB7aOZRA7JBNj9/ib6
///         N0iTo81dJVz/nnpbWRaFTVinIsDF1heDfQ1qDx06T/Mpi6pjoWjRUcyIHEbZJTel
///         0nXDJD1BAoGBAPZB/PN8MP+o9gkf2jnoU9LzctDJrQwD1J2XElq4RomimPIMqDQP
///         5TRAJThf0O0X4Mv2n9EzV457OpJL+fz9htRWEYogWl9bkbzZ1AoX4K/acuGeawTT
///         YEhPjJ2ZETsBsCeDkDDuHHzYwRQv+EfoXH36z9PBDxG1ZDb7kWwAILXdAoGBAOZW
///         jXG7m4I7cxUtXGtjwydh4K7nwH/5QoH2m928HM2AT48eQCl3CMQ089+qeJGgfHQv
///         GyVOO/FGhcFsFi10FMQ7IlwWgZODg64qnrNhi4zbV1M2wKem1T2dlEpkd82EFdnS
///         GYRIEkFORMxEDyzx3Th2TajpWC8YKKG3Tnm0bQ4DAoGBAIZTEEswHvoVi78GZN7Z
///         X3/d028X0xCOtlcPpK9ffPpuesbtKILdeMS7iJHrkecB81jOOfa+7q+FgDl0v/PD
///         xtvj5sVVSHZjWGeO2h53T9QccDWpV+7V7dsDqUv9xmxNS20CUpCeEWP4R7lfQSrY
///         EDuXp+11jWa3buae6n/iwfTxAoGABEYW2cVhXUk9GWd+D4AKXvCx+ozSRY2abk7l
///         FXgoEKgQ0db92ccboohY/g1rr0gLBxzYpBiPhCqK0MvwnWdJ+1odiRfhz5rhFpoz
///         16A3tqVbOXAKoxG1Yy9JURgMIQQSY7hCQPIVZKDPJfsdTPgv4pxPVJL/z9/i4R1F
///         l3yBiYECgYEA0+vpzL24nHZYdwgBF4qbmYhv8baRi07/BNgV1+d6vESuO/MwwoE/
///         2UZ9Drf5yoX2Bvi5/vVMbyc7cSluO7icPBkl0D8F7E3x0v5mzwPxtpR8BTRoJKOL
///         /rMdLscMz2VQsL5DJd/9OZg60fHRaRtWtV0afXzL5zUxnfDLot24IG4=
///         -----END RSA PRIVATE KEY-----
///     options: {}
///   defaultListener:
///     type: alicloud:ga:Listener
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       name: ${name}
///       protocol: HTTPS
///       portRanges:
///         - fromPort: 8080
///           toPort: 8080
///       certificates:
///         - id:
///             fn::invoke:
///               function: std:join
///               arguments:
///                 separator: '-'
///                 input:
///                   - ${defaultServiceCertificate[1].id}
///                   - ${region}
///               return: result
///   defaultAdditionalCertificate:
///     type: alicloud:ga:AdditionalCertificate
///     name: default
///     properties:
///       certificateId:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: '-'
///             input:
///               - ${defaultServiceCertificate[1].id}
///               - ${region}
///           return: result
///       domain: ${domain}
///       acceleratorId: ${defaultListener.acceleratorId}
///       listenerId: ${defaultListener.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ga:getAccelerators
///       arguments:
///         status: active
///   domain: alicloud-provider.cn
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Additional Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/additionalCertificate:AdditionalCertificate example <accelerator_id>:<listener_id>:<domain>
/// ```
class AdditionalCertificate extends pulumi.CustomResource {
  /// The ID of the GA instance.
  late final pulumi.Output<String> acceleratorId;
  /// The Certificate ID. **NOTE:** From version 1.209.1, `certificate_id` can be modified.
  late final pulumi.Output<String> certificateId;
  /// The domain name specified by the certificate. **NOTE:** You can associate each domain name with only one additional certificate.
  late final pulumi.Output<String> domain;
  /// The ID of the listener. **NOTE:** Only HTTPS listeners support this parameter.
  late final pulumi.Output<String> listenerId;

  /// Creates a new [AdditionalCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdditionalCertificate]. {@macro pulumi_ga_additional_certificate_additional_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdditionalCertificate(
    String name, {
    AdditionalCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/additionalCertificate:AdditionalCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    certificateId = registerOutput<String>('certificateId');
    domain = registerOutput<String>('domain');
    listenerId = registerOutput<String>('listenerId');
  }

  /// Gets an existing [AdditionalCertificate] resource's state with the given [name] and [id].
  static AdditionalCertificate get(
    String name,
    pulumi.Input<String> id, {
    AdditionalCertificateState? state,
  }) {
    return AdditionalCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AdditionalCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/additionalCertificate:AdditionalCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    certificateId = registerOutput<String>('certificateId');
    domain = registerOutput<String>('domain');
    listenerId = registerOutput<String>('listenerId');
  }
}
