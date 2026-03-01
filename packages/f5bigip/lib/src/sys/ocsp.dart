import 'package:pulumi/pulumi.dart' as pulumi;
import 'ocsp_args.dart';

/// `f5bigip.sys.Ocsp` Manages F5 BIG-IP OCSP responder using iControl REST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_ocsp = new f5bigip.sys.Ocsp("test-ocsp", {
///     name: "/Uncommon/test-ocsp",
///     proxyServerPool: "/Common/test-poolxyz",
///     signerKey: "/Common/le-ssl",
///     signerCert: "/Common/le-ssl",
///     passphrase: "testabcdef",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_ocsp = f5bigip.sys.Ocsp("test-ocsp",
///     name="/Uncommon/test-ocsp",
///     proxy_server_pool="/Common/test-poolxyz",
///     signer_key="/Common/le-ssl",
///     signer_cert="/Common/le-ssl",
///     passphrase="testabcdef")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_ocsp = new F5BigIP.Sys.Ocsp("test-ocsp", new()
///     {
///         Name = "/Uncommon/test-ocsp",
///         ProxyServerPool = "/Common/test-poolxyz",
///         SignerKey = "/Common/le-ssl",
///         SignerCert = "/Common/le-ssl",
///         Passphrase = "testabcdef",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/sys"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sys.NewOcsp(ctx, "test-ocsp", &sys.OcspArgs{
/// 			Name:            pulumi.String("/Uncommon/test-ocsp"),
/// 			ProxyServerPool: pulumi.String("/Common/test-poolxyz"),
/// 			SignerKey:       pulumi.String("/Common/le-ssl"),
/// 			SignerCert:      pulumi.String("/Common/le-ssl"),
/// 			Passphrase:      pulumi.String("testabcdef"),
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
/// import com.pulumi.f5bigip.sys.Ocsp;
/// import com.pulumi.f5bigip.sys.OcspArgs;
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
///         var test_ocsp = new Ocsp("test-ocsp", OcspArgs.builder()
///             .name("/Uncommon/test-ocsp")
///             .proxyServerPool("/Common/test-poolxyz")
///             .signerKey("/Common/le-ssl")
///             .signerCert("/Common/le-ssl")
///             .passphrase("testabcdef")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-ocsp:
///     type: f5bigip:sys:Ocsp
///     properties:
///       name: /Uncommon/test-ocsp
///       proxyServerPool: /Common/test-poolxyz
///       signerKey: /Common/le-ssl
///       signerCert: /Common/le-ssl
///       passphrase: testabcdef
/// ```
///
///
/// ## Importing
///
/// An existing OCSP can be imported into this resource by supplying the full path name  ex : `/partition/name`
/// An example is below:
/// ```sh
/// $ terraform import bigip_sys_ocsp.test-ocsp /Common/test-ocsp
/// ```
class Ocsp extends pulumi.CustomResource {
  /// Specifies the lifetime of an error response in the cache, in seconds. This value must be greater than connection_timeout. The default value is `3600`.
  late final pulumi.Output<int?> cacheErrorTimeout;
  /// Specifies the lifetime of the OCSP response in the cache, in seconds. The default value is `indefinite`.
  late final pulumi.Output<String?> cacheTimeout;
  /// Specifies the time interval that the BIG-IP system allows for clock skew, in seconds. The default value is `300`.
  late final pulumi.Output<int?> clockSkew;
  /// Specifies the maximum number of connections per second allowed for the OCSP certificate validator. The default value is `50`.
  late final pulumi.Output<int?> concurrentConnectionsLimit;
  /// Specifies the time interval that the BIG-IP system waits for before ending the connection to the OCSP responder, in seconds. The default value is `8`.
  late final pulumi.Output<int?> connectionTimeout;
  /// Specifies the internal DNS resolver the BIG-IP system uses to fetch the OCSP response.
  late final pulumi.Output<String?> dnsResolver;
  /// Name of the OCSP Responder. Name should be in pattern `/partition/ocsp_name`.
  late final pulumi.Output<String> name;
  /// Specifies a passphrase used to sign an OCSP request.
  late final pulumi.Output<String?> passphrase;
  /// Specifies the proxy server pool the BIG-IP system uses to fetch the OCSP response.
  late final pulumi.Output<String?> proxyServerPool;
  /// Specifies the URL of the OCSP responder.
  late final pulumi.Output<String?> responderUrl;
  /// Specifies the route domain for the OCSP responder.
  late final pulumi.Output<String?> routeDomain;
  /// Specifies the hash algorithm used to sign the OCSP request. The default value is `sha256`.
  late final pulumi.Output<String?> signHash;
  /// Specifies the certificate used to sign the OCSP request.
  late final pulumi.Output<String?> signerCert;
  /// Specifies the key used to sign the OCSP request.
  late final pulumi.Output<String?> signerKey;
  /// Specifies the maximum allowed lag time that the BIG-IP system accepts for the 'thisUpdate' time in the OCSP response, in seconds. The default value is `0`.
  late final pulumi.Output<int?> statusAge;
  /// Specifies whether the responder's certificate is checked for an OCSP signing extension. The default value is `enabled`.
  late final pulumi.Output<String?> strictRespCertCheck;
  /// Specifies the certificates used for validating the OCSP response.
  late final pulumi.Output<String?> trustedResponders;

  /// Creates a new [Ocsp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ocsp]. {@macro pulumi_sys_ocsp_ocsp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ocsp(
    String name, {
    OcspArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/ocsp:Ocsp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cacheErrorTimeout = registerOutput<int?>('cacheErrorTimeout');
    this.cacheTimeout = registerOutput<String?>('cacheTimeout');
    this.clockSkew = registerOutput<int?>('clockSkew');
    this.concurrentConnectionsLimit = registerOutput<int?>('concurrentConnectionsLimit');
    this.connectionTimeout = registerOutput<int?>('connectionTimeout');
    this.dnsResolver = registerOutput<String?>('dnsResolver');
    this.name = registerOutput<String>('name');
    this.passphrase = registerOutput<String?>('passphrase');
    this.proxyServerPool = registerOutput<String?>('proxyServerPool');
    this.responderUrl = registerOutput<String?>('responderUrl');
    this.routeDomain = registerOutput<String?>('routeDomain');
    this.signHash = registerOutput<String?>('signHash');
    this.signerCert = registerOutput<String?>('signerCert');
    this.signerKey = registerOutput<String?>('signerKey');
    this.statusAge = registerOutput<int?>('statusAge');
    this.strictRespCertCheck = registerOutput<String?>('strictRespCertCheck');
    this.trustedResponders = registerOutput<String?>('trustedResponders');
  }
}
