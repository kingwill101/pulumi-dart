import 'package:pulumi/pulumi.dart' as pulumi;
import 'net_ike_peer_args.dart';

/// `f5bigip.NetIkePeer` Manages a ike_peer configuration
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const example1 = new f5bigip.NetIkePeer("example1", {
///     name: "example1",
///     localAddress: "192.16.81.240",
///     profile: "/Common/dslite",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// example1 = f5bigip.NetIkePeer("example1",
///     name="example1",
///     local_address="192.16.81.240",
///     profile="/Common/dslite")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example1 = new F5BigIP.NetIkePeer("example1", new()
///     {
///         Name = "example1",
///         LocalAddress = "192.16.81.240",
///         Profile = "/Common/dslite",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewNetIkePeer(ctx, "example1", &f5bigip.NetIkePeerArgs{
/// 			Name:         pulumi.String("example1"),
/// 			LocalAddress: "192.16.81.240",
/// 			Profile:      "/Common/dslite",
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
/// import com.pulumi.f5bigip.NetIkePeer;
/// import com.pulumi.f5bigip.NetIkePeerArgs;
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
///         var example1 = new NetIkePeer("example1", NetIkePeerArgs.builder()
///             .name("example1")
///             .localAddress("192.16.81.240")
///             .profile("/Common/dslite")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example1:
///     type: f5bigip:NetIkePeer
///     properties:
///       name: example1
///       localAddress: 192.16.81.240
///       profile: /Common/dslite
/// ```
class NetIkePeer extends pulumi.CustomResource {
  /// The application service that the object belongs to
  late final pulumi.Output<String?> appService;
  /// the trusted root and intermediate certificate authorities
  late final pulumi.Output<String> caCertFile;
  /// Specifies the file name of the Certificate Revocation List. Only supported in IKEv1
  late final pulumi.Output<String> crlFile;
  /// User defined description
  late final pulumi.Output<String> description;
  /// Specifies the number of seconds between Dead Peer Detection messages
  late final pulumi.Output<int> dpdDelay;
  /// Enable or disable the generation of Security Policy Database entries(SPD) when the device is the responder of the IKE remote node
  late final pulumi.Output<String> generatePolicy;
  /// Defines the lifetime in minutes of an IKE SA which will be proposed in the phase 1 negotiations
  late final pulumi.Output<int> lifetime;
  /// Defines the exchange mode for phase 1 when racoon is the initiator, or the acceptable exchange mode when racoon is the responder
  late final pulumi.Output<String> mode;
  /// Specifies the name of the certificate file object
  late final pulumi.Output<String> myCertFile;
  /// Specifies the name of the certificate key file object
  late final pulumi.Output<String> myCertKeyFile;
  /// Specifies the passphrase of the key used for my-cert-key-file
  late final pulumi.Output<String> myCertKeyPassphrase;
  /// Specifies the identifier type sent to the remote host to use in the phase 1 negotiation
  late final pulumi.Output<String> myIdType;
  /// Specifies the identifier value sent to the remote host in the phase 1 negotiation
  late final pulumi.Output<String> myIdValue;
  /// Name of the ike_peer
  late final pulumi.Output<String> name;
  /// Enables use of the NAT-Traversal IPsec extension
  late final pulumi.Output<String> natTraversal;
  /// Specifies whether the local IKE agent can be the initiator of the IKE negotiation with this ike-peer
  late final pulumi.Output<String> passive;
  /// Specifies the peer’s certificate for authentication
  late final pulumi.Output<String> peersCertFile;
  /// Specifies that the only peers-cert-type supported is certfile
  late final pulumi.Output<String> peersCertType;
  /// Specifies which of address, fqdn, asn1dn, user-fqdn or keyid-tag types to use as peers-id-type
  late final pulumi.Output<String> peersIdType;
  /// Specifies the peer’s identifier to be received
  late final pulumi.Output<String> peersIdValue;
  /// Specifies the authentication method used for phase 1 negotiation
  late final pulumi.Output<String> phase1AuthMethod;
  /// Specifies the encryption algorithm used for the isakmp phase 1 negotiation
  late final pulumi.Output<String> phase1EncryptAlgorithm;
  /// Defines the hash algorithm used for the isakmp phase 1 negotiation
  late final pulumi.Output<String> phase1HashAlgorithm;
  /// Defines the Diffie-Hellman group for key exchange to provide perfect forward secrecy
  late final pulumi.Output<String> phase1PerfectForwardSecrecy;
  /// Specifies the preshared key for ISAKMP SAs
  late final pulumi.Output<String?> presharedKey;
  /// Display the encrypted preshared-key for the IKE remote node
  late final pulumi.Output<String> presharedKeyEncrypted;
  /// Specifies the pseudo-random function used to derive keying material for all cryptographic operations
  late final pulumi.Output<String> prf;
  /// If this value is enabled, both values of ID payloads in the phase 2 exchange are used as the addresses of end-point of IPsec-SAs
  late final pulumi.Output<String> proxySupport;
  /// Specifies the IP address of the IKE remote node
  late final pulumi.Output<String> remoteAddress;
  /// Specifies the replay window size of the IPsec SAs negotiated with the IKE remote node
  late final pulumi.Output<int> replayWindowSize;
  /// Enables or disables this IKE remote node
  late final pulumi.Output<String> state;
  /// Specifies the names of the traffic-selector objects associated with this ike-peer
  late final pulumi.Output<List<String>> trafficSelectors;
  /// Specifies whether to verify the certificate chain of the remote peer based on the trusted certificates in ca-cert-file
  late final pulumi.Output<String> verifyCert;
  /// Specifies which version of IKE to be used
  late final pulumi.Output<List<String>> versions;

  /// Creates a new [NetIkePeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetIkePeer]. {@macro pulumi_index_net_ike_peer_net_ike_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetIkePeer(
    String name, {
    NetIkePeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/netIkePeer:NetIkePeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appService = registerOutput<String?>('appService');
    this.caCertFile = registerOutput<String>('caCertFile');
    this.crlFile = registerOutput<String>('crlFile');
    this.description = registerOutput<String>('description');
    this.dpdDelay = registerOutput<int>('dpdDelay');
    this.generatePolicy = registerOutput<String>('generatePolicy');
    this.lifetime = registerOutput<int>('lifetime');
    this.mode = registerOutput<String>('mode');
    this.myCertFile = registerOutput<String>('myCertFile');
    this.myCertKeyFile = registerOutput<String>('myCertKeyFile');
    this.myCertKeyPassphrase = registerOutput<String>('myCertKeyPassphrase');
    this.myIdType = registerOutput<String>('myIdType');
    this.myIdValue = registerOutput<String>('myIdValue');
    this.name = registerOutput<String>('name');
    this.natTraversal = registerOutput<String>('natTraversal');
    this.passive = registerOutput<String>('passive');
    this.peersCertFile = registerOutput<String>('peersCertFile');
    this.peersCertType = registerOutput<String>('peersCertType');
    this.peersIdType = registerOutput<String>('peersIdType');
    this.peersIdValue = registerOutput<String>('peersIdValue');
    this.phase1AuthMethod = registerOutput<String>('phase1AuthMethod');
    this.phase1EncryptAlgorithm = registerOutput<String>('phase1EncryptAlgorithm');
    this.phase1HashAlgorithm = registerOutput<String>('phase1HashAlgorithm');
    this.phase1PerfectForwardSecrecy = registerOutput<String>('phase1PerfectForwardSecrecy');
    this.presharedKey = registerOutput<String?>('presharedKey');
    this.presharedKeyEncrypted = registerOutput<String>('presharedKeyEncrypted');
    this.prf = registerOutput<String>('prf');
    this.proxySupport = registerOutput<String>('proxySupport');
    this.remoteAddress = registerOutput<String>('remoteAddress');
    this.replayWindowSize = registerOutput<int>('replayWindowSize');
    this.state = registerOutput<String>('state');
    this.trafficSelectors = registerOutput<List<String>>('trafficSelectors');
    this.verifyCert = registerOutput<String>('verifyCert');
    this.versions = registerOutput<List<String>>('versions');
  }
}
