// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_service_catalog_provisioning_details.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Project.
  final pulumi.Input<String>? arn;
  /// A description for the project.
  final pulumi.Input<String>? projectDescription;
  /// The ID of the project.
  final pulumi.Input<String>? projectId;
  /// The name of the Project.
  final pulumi.Input<String>? projectName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  final pulumi.Input<ProjectServiceCatalogProvisioningDetails>? serviceCatalogProvisioningDetails;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProjectState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Project.
  /// [projectDescription] A description for the project.
  /// [projectId] The ID of the project.
  /// [projectName] The name of the Project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceCatalogProvisioningDetails] The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ProjectState({
    this.arn,
    this.projectDescription,
    this.projectId,
    this.projectName,
    this.region,
    this.serviceCatalogProvisioningDetails,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'projectDescription': ?projectDescription,
      'projectId': ?projectId,
      'projectName': ?projectName,
      'region': ?region,
      'serviceCatalogProvisioningDetails': ?pulumi.Input.mapOptionalInputValue<ProjectServiceCatalogProvisioningDetails, Map<String, dynamic>>(serviceCatalogProvisioningDetails, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      projectDescription: map['projectDescription'] == null ? null : (map['projectDescription'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceCatalogProvisioningDetails: map['serviceCatalogProvisioningDetails'] == null ? null : (ProjectServiceCatalogProvisioningDetails.fromMap((map['serviceCatalogProvisioningDetails'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

