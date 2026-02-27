// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_service_catalog_provisioning_details/project_service_catalog_provisioning_details.dart';

/// The set of arguments for Project.
class ProjectSagemakerArgs {
  /// A description for the project.
  final pulumi.Input<String>? projectDescription;

  /// The name of the Project.
  final pulumi.Input<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  final pulumi.Input<ProjectServiceCatalogProvisioningDetails>
      serviceCatalogProvisioningDetails;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ProjectSagemakerArgs({
    this.projectDescription,
    required this.projectName,
    this.region,
    required this.serviceCatalogProvisioningDetails,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectDescriptionValue = projectDescription;
    if (projectDescriptionValue != null) {
      map['projectDescription'] = projectDescriptionValue;
    }
    map['projectName'] = projectName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceCatalogProvisioningDetails'] = pulumi.Input.mapInputValue<
            ProjectServiceCatalogProvisioningDetails, Map<String, dynamic>>(
        serviceCatalogProvisioningDetails, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProjectSagemakerArgs.fromMap(Map<String, dynamic> map) {
    return ProjectSagemakerArgs(
      projectDescription:
          pulumi.Input.asOptionalInput<String>(map['projectDescription']),
      projectName: pulumi.Input.asInput<String>(map['projectName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceCatalogProvisioningDetails:
          pulumi.Input.asInput<ProjectServiceCatalogProvisioningDetails>(
              map['serviceCatalogProvisioningDetails']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
