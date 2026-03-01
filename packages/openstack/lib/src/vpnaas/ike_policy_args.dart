// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ike_policy_lifetime.dart';

/// {@template pulumi_vpnaas_ike_policy_ike_policy_args_doc}
/// The set of arguments for IkePolicy.
/// {@endtemplate}
/// {@macro pulumi_vpnaas_ike_policy_ike_policy_args_doc}
class IkePolicyArgs {
  /// The authentication hash algorithm. Valid values are sha1, sha256, sha384, sha512,
  /// aes-xcbc, aes-cmac. Default is sha1.
  /// Changing this updates the algorithm of the existing policy.
  final pulumi.Input<String>? authAlgorithm;
  /// The human-readable description for the policy.
  /// Changing this updates the description of the existing policy.
  final pulumi.Input<String>? description;
  /// The encryption algorithm. Valid values are 3des, aes-128, aes-192, aes-256,
  /// aes-KKK-ctr, aes-KKK-ccm-II, aes-KKK-gcm-II (with KKK = 128/192/256 bits key size and II = 8/12/16 octets ICV).
  /// The default value is aes-128. Changing this updates the existing policy.
  final pulumi.Input<String>? encryptionAlgorithm;
  /// The IKE version. A valid value is v1 or v2. Default is v1.
  /// Changing this updates the existing policy.
  final pulumi.Input<String>? ikeVersion;
  /// The lifetime of the security association. Consists of Unit and Value.
  final pulumi.Input<List<IkePolicyLifetime>>? lifetimes;
  /// The name of the policy. Changing this updates the name of
  /// the existing policy.
  final pulumi.Input<String>? name;
  /// The perfect forward secrecy mode. Valid values are group2, group5 and group14 to group31.
  /// Default is group5. Changing this updates the existing policy.
  final pulumi.Input<String>? pfs;
  /// The IKE mode. A valid value is main, which is the default.
  /// Changing this updates the existing policy.
  final pulumi.Input<String>? phase1NegotiationMode;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// service.
  final pulumi.Input<String>? region;
  /// The owner of the policy. Required if admin wants to
  /// create a service for another policy. Changing this creates a new policy.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [IkePolicyArgs].
  /// [authAlgorithm] The authentication hash algorithm. Valid values are sha1, sha256, sha384, sha512,
  /// [description] The human-readable description for the policy.
  /// [encryptionAlgorithm] The encryption algorithm. Valid values are 3des, aes-128, aes-192, aes-256,
  /// [ikeVersion] The IKE version. A valid value is v1 or v2. Default is v1.
  /// [lifetimes] The lifetime of the security association. Consists of Unit and Value.
  /// [name] The name of the policy. Changing this updates the name of
  /// [pfs] The perfect forward secrecy mode. Valid values are group2, group5 and group14 to group31.
  /// [phase1NegotiationMode] The IKE mode. A valid value is main, which is the default.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The owner of the policy. Required if admin wants to
  /// [valueSpecs] Map of additional options.
  IkePolicyArgs({
    String? authAlgorithm,
    String? description,
    String? encryptionAlgorithm,
    String? ikeVersion,
    List<IkePolicyLifetime>? lifetimes,
    String? name,
    String? pfs,
    String? phase1NegotiationMode,
    String? region,
    String? tenantId,
    Map<String, String>? valueSpecs,
  }) :
      authAlgorithm = pulumi.Input.asOptionalInput<String>(authAlgorithm),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionAlgorithm = pulumi.Input.asOptionalInput<String>(encryptionAlgorithm),
      ikeVersion = pulumi.Input.asOptionalInput<String>(ikeVersion),
      lifetimes = pulumi.Input.asOptionalInput<List<IkePolicyLifetime>>(lifetimes),
      name = pulumi.Input.asOptionalInput<String>(name),
      pfs = pulumi.Input.asOptionalInput<String>(pfs),
      phase1NegotiationMode = pulumi.Input.asOptionalInput<String>(phase1NegotiationMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authAlgorithm': ?authAlgorithm,
      'description': ?description,
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'ikeVersion': ?ikeVersion,
      'lifetimes': ?pulumi.Input.mapOptionalInputValue<List<IkePolicyLifetime>, List<Map<String, dynamic>>>(lifetimes, (value) => pulumi.Input.encodeList<IkePolicyLifetime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pfs': ?pfs,
      'phase1NegotiationMode': ?phase1NegotiationMode,
      'region': ?region,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory IkePolicyArgs.fromMap(Map<String, dynamic> map) {
    return IkePolicyArgs(
      authAlgorithm: map['authAlgorithm'] == null ? null : map['authAlgorithm'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encryptionAlgorithm: map['encryptionAlgorithm'] == null ? null : map['encryptionAlgorithm'] as String,
      ikeVersion: map['ikeVersion'] == null ? null : map['ikeVersion'] as String,
      lifetimes: map['lifetimes'] == null ? null : pulumi.Input.decodeList<IkePolicyLifetime>(map['lifetimes'], (value) => IkePolicyLifetime.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      pfs: map['pfs'] == null ? null : map['pfs'] as String,
      phase1NegotiationMode: map['phase1NegotiationMode'] == null ? null : map['phase1NegotiationMode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      valueSpecs: map['valueSpecs'] == null ? null : (map['valueSpecs'] as Map).cast<String, String>(),
    );
  }
}

