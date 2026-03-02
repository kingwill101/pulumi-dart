// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_service_catalog_provisioning_details_provisioning_parameter.dart';

class ProjectServiceCatalogProvisioningDetails {
  /// The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path.
  final pulumi.Input<String>? pathId;
  /// The ID of the product to provision.
  final pulumi.Input<String> productId;
  /// The ID of the provisioning artifact.
  final pulumi.Input<String>? provisioningArtifactId;
  /// A list of key value pairs that you specify when you provision a product. See Provisioning Parameter below.
  final pulumi.Input<List<ProjectServiceCatalogProvisioningDetailsProvisioningParameter>>? provisioningParameters;

  /// Creates a new [ProjectServiceCatalogProvisioningDetails].
  /// [pathId] The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path.
  /// [productId] The ID of the product to provision.
  /// [provisioningArtifactId] The ID of the provisioning artifact.
  /// [provisioningParameters] A list of key value pairs that you specify when you provision a product. See Provisioning Parameter below.
  ProjectServiceCatalogProvisioningDetails({
    this.pathId,
    required this.productId,
    this.provisioningArtifactId,
    this.provisioningParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathId': ?pathId,
      'productId': productId,
      'provisioningArtifactId': ?provisioningArtifactId,
      'provisioningParameters': ?pulumi.Input.mapOptionalInputValue<List<ProjectServiceCatalogProvisioningDetailsProvisioningParameter>, List<Map<String, dynamic>>>(provisioningParameters, (value) => pulumi.Input.encodeList<ProjectServiceCatalogProvisioningDetailsProvisioningParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectServiceCatalogProvisioningDetails.fromMap(Map<String, dynamic> map) {
    return ProjectServiceCatalogProvisioningDetails(
      pathId: map['pathId'] == null ? null : ((map['pathId'] as String).input()).input(),
      productId: (map['productId'] as String).input(),
      provisioningArtifactId: map['provisioningArtifactId'] == null ? null : ((map['provisioningArtifactId'] as String).input()).input(),
      provisioningParameters: map['provisioningParameters'] == null ? null : ((pulumi.Input.decodeList<ProjectServiceCatalogProvisioningDetailsProvisioningParameter>(map['provisioningParameters']!, (value) => ProjectServiceCatalogProvisioningDetailsProvisioningParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

