// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_configuration.dart';

/// {@template pulumi_deviceregistry_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_policy_args_doc}
class PolicyArgs {
  /// The certificate configuration.
  final pulumi.Input<CertificateConfiguration>? certificate;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the Policy tracked resource.
  final pulumi.Input<String>? policyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyArgs].
  /// [certificate] The certificate configuration.
  /// [location] The geo-location where the resource lives
  /// [namespaceName] The name of the namespace.
  /// [policyName] The name of the Policy tracked resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PolicyArgs({
    CertificateConfiguration? certificate,
    String? location,
    required String namespaceName,
    String? policyName,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      certificate = pulumi.Input.asOptionalInput<CertificateConfiguration>(certificate),
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateConfiguration, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'location': ?location,
      'namespaceName': namespaceName,
      'policyName': ?policyName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      certificate: map['certificate'] == null ? null : CertificateConfiguration.fromMap((map['certificate'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      namespaceName: map['namespaceName'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

