import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_exadata_infrastructure_properties/cloud_exadata_infrastructure_properties.dart';
import 'cloud_exadata_infrastructure_args.dart';

/// A CloudExadataInfrastructure resource.
///
///
/// To get more information about CloudExadataInfrastructure, see:
///
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures)
/// * How-to Guides
/// * [Create Exadata Infrastructure instances](https://cloud.google.com/oracle/database/docs/create-instances)
///
/// ## Example Usage
///
/// ### Oracledatabase Cloud Exadata Infrastructure Basic
///
///
///
/// ### Oracledatabase Cloud Exadata Infrastructure Full
///
///
///
///
/// ## Import
///
/// CloudExadataInfrastructure can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cloudExadataInfrastructures/{{cloud_exadata_infrastructure_id}}`
///
/// * `{{project}}/{{location}}/{{cloud_exadata_infrastructure_id}}`
///
/// * `{{location}}/{{cloud_exadata_infrastructure_id}}`
///
/// When using the `pulumi import` command, CloudExadataInfrastructure can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure default projects/{{project}}/locations/{{location}}/cloudExadataInfrastructures/{{cloud_exadata_infrastructure_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure default {{project}}/{{location}}/{{cloud_exadata_infrastructure_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure default {{location}}/{{cloud_exadata_infrastructure_id}}
/// ```
class CloudExadataInfrastructure extends pulumi.CustomResource {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final pulumi.Output<String> cloudExadataInfrastructureId;

  /// The date and time that the Exadata Infrastructure was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// User friendly name for this resource.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Entitlement ID of the private offer against which this infrastructure
  /// resource is provisioned.
  late final pulumi.Output<String> entitlementId;

  /// GCP location where Oracle Exadata is hosted.
  late final pulumi.Output<String> gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  late final pulumi.Output<String> location;

  /// Identifier. The name of the Exadata Infrastructure resource with the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  late final pulumi.Output<CloudExadataInfrastructureProperties?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  CloudExadataInfrastructure(
    String name, {
    CloudExadataInfrastructureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudExadataInfrastructureId =
        registerOutput<String>('cloudExadataInfrastructureId');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entitlementId = registerOutput<String>('entitlementId');
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.properties =
        registerOutput<CloudExadataInfrastructureProperties?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
