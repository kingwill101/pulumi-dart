import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_host_config/instance_host_config.dart';
import '../instance_private_config/instance_private_config.dart';
import '../instance_workforce_identity_federation_config/instance_workforce_identity_federation_config.dart';
import 'instance_securesourcemanager_args.dart';

/// Instances are deployed to an available Google Cloud region and are accessible via their web interface.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/create-instance)
///
/// ## Example Usage
///
/// ### Secure Source Manager Instance Basic
///
///
///
/// ### Secure Source Manager Instance Cmek
///
///
///
/// ### Secure Source Manager Instance Private
///
///
///
/// ### Secure Source Manager Instance Private Psc Backend
///
///
///
/// ### Secure Source Manager Instance Private Psc Endpoint
///
///
///
/// ### Secure Source Manager Instance Workforce Identity Federation
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// * `{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default {{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default {{instance_id}}
/// ```
class InstanceSecuresourcemanager extends pulumi.CustomResource {
  /// Time the Instance was created in UTC.
  late final pulumi.Output<String> createTime;

  /// The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental
  /// deletion by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  late final pulumi.Output<String?> deletionPolicy;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A list of hostnames for this instance.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceHostConfig>> hostConfigs;

  /// The name for the Instance.
  late final pulumi.Output<String> instanceId;

  /// Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  late final pulumi.Output<String?> kmsKey;

  /// Labels as key value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the Instance.
  late final pulumi.Output<String> location;

  /// The resource name for the Instance.
  late final pulumi.Output<String> name;

  /// Private settings for private instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePrivateConfig?> privateConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the Instance.
  late final pulumi.Output<String> state;

  /// Provides information about the current instance state.
  late final pulumi.Output<String> stateNote;

  /// Time the Instance was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Configuration for Workforce Identity Federation to support third party identity provider.
  /// If unset, defaults to the Google OIDC IdP.
  /// Structure is documented below.
  late final pulumi.Output<InstanceWorkforceIdentityFederationConfig?>
      workforceIdentityFederationConfig;

  InstanceSecuresourcemanager(
    String name, {
    InstanceSecuresourcemanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hostConfigs = registerOutput<List<InstanceHostConfig>>('hostConfigs');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConfig =
        registerOutput<InstancePrivateConfig?>('privateConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateNote = registerOutput<String>('stateNote');
    this.updateTime = registerOutput<String>('updateTime');
    this.workforceIdentityFederationConfig =
        registerOutput<InstanceWorkforceIdentityFederationConfig?>(
            'workforceIdentityFederationConfig');
  }
}
