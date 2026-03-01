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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? projectDescription,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? region,
    pulumi.Output<ProjectServiceCatalogProvisioningDetails>? serviceCatalogProvisioningDetails,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      projectDescription = pulumi.Input.asOptionalInput<String>(projectDescription),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceCatalogProvisioningDetails = pulumi.Input.asOptionalInput<ProjectServiceCatalogProvisioningDetails>(serviceCatalogProvisioningDetails),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      projectDescription: map['projectDescription'] == null ? null : pulumi.Output.create<String>(map['projectDescription'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceCatalogProvisioningDetails: map['serviceCatalogProvisioningDetails'] == null ? null : pulumi.Output.create<ProjectServiceCatalogProvisioningDetails>(ProjectServiceCatalogProvisioningDetails.fromMap((map['serviceCatalogProvisioningDetails'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

