// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_service_catalog_provisioning_details/project_service_catalog_provisioning_details.dart';

/// The set of arguments for Project.
class ProjectArgs7 {
  /// A description for the project.
  final Input<String>? projectDescription;

  /// The name of the Project.
  final Input<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  final Input<ProjectServiceCatalogProvisioningDetails>
      serviceCatalogProvisioningDetails;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ProjectArgs7({
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
    map['serviceCatalogProvisioningDetails'] = Input.mapInputValue<
            ProjectServiceCatalogProvisioningDetails, Map<String, dynamic>>(
        serviceCatalogProvisioningDetails, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProjectArgs7.fromMap(Map<String, dynamic> map) {
    return ProjectArgs7(
      projectDescription:
          Input.asOptionalInput<String>(map['projectDescription']),
      projectName: Input.asInput<String>(map['projectName']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceCatalogProvisioningDetails:
          Input.asInput<ProjectServiceCatalogProvisioningDetails>(
              map['serviceCatalogProvisioningDetails']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
