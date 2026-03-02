// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_service_catalog_provisioning_details.dart';

/// {@template pulumi_sagemaker_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_project_project_args_doc}
class ProjectArgs {
  /// A description for the project.
  final pulumi.Input<String>? projectDescription;
  /// The name of the Project.
  final pulumi.Input<String> projectName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  final pulumi.Input<ProjectServiceCatalogProvisioningDetails> serviceCatalogProvisioningDetails;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [projectDescription] A description for the project.
  /// [projectName] The name of the Project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceCatalogProvisioningDetails] The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProjectArgs({
    this.projectDescription,
    required this.projectName,
    this.region,
    required this.serviceCatalogProvisioningDetails,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectDescription': ?projectDescription,
      'projectName': projectName,
      'region': ?region,
      'serviceCatalogProvisioningDetails': pulumi.Input.mapInputValue<ProjectServiceCatalogProvisioningDetails, Map<String, dynamic>>(serviceCatalogProvisioningDetails, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      projectDescription: map['projectDescription'] == null ? null : ((map['projectDescription'] as String).input()).input(),
      projectName: (map['projectName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceCatalogProvisioningDetails: (ProjectServiceCatalogProvisioningDetails.fromMap((map['serviceCatalogProvisioningDetails']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

