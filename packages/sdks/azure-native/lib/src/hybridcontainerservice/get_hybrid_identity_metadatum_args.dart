// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_hybrid_identity_metadatum_args_doc}
/// Arguments for getHybridIdentityMetadatum.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_hybrid_identity_metadatum_args_doc}
class GetHybridIdentityMetadatumArgs {
  /// Parameter for the name of the hybrid identity metadata resource.
  final pulumi.Input<String> hybridIdentityMetadataResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the provisioned cluster
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetHybridIdentityMetadatumArgs].
  /// [hybridIdentityMetadataResourceName] Parameter for the name of the hybrid identity metadata resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Parameter for the name of the provisioned cluster
  GetHybridIdentityMetadatumArgs({
    required this.hybridIdentityMetadataResourceName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridIdentityMetadataResourceName': hybridIdentityMetadataResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetHybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridIdentityMetadatumArgs(
      hybridIdentityMetadataResourceName: (map['hybridIdentityMetadataResourceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

