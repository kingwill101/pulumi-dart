// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_connection_policy_psc_config/service_connection_policy_psc_config.dart';

/// The set of arguments for ServiceConnectionPolicy.
class ServiceConnectionPolicyArgs {
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the ServiceConnectionPolicy.
  final pulumi.Input<String> location;

  /// The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;

  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// Structure is documented below.
  final pulumi.Input<ServiceConnectionPolicyPscConfig>? pscConfig;

  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
  /// It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final pulumi.Input<String> serviceClass;

  ServiceConnectionPolicyArgs({
    this.description,
    this.labels,
    required this.location,
    this.name,
    required this.network,
    this.project,
    this.pscConfig,
    required this.serviceClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceConnectionPolicyPscConfig,
          Map<String, dynamic>>(pscConfigValue, (value) => value.toMap());
    }
    map['serviceClass'] = serviceClass;
    return map;
  }

  factory ServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscConfig: pulumi.Input.asOptionalInput<ServiceConnectionPolicyPscConfig>(
          map['pscConfig']),
      serviceClass: pulumi.Input.asInput<String>(map['serviceClass']),
    );
  }
}
