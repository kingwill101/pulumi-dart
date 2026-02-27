// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_endpoint_endpoint_settings/firewall_endpoint_endpoint_settings.dart';

/// The set of arguments for FirewallEndpoint.
class FirewallEndpointArgs {
  /// Project to bill on endpoint uptime usage.
  final pulumi.Input<String> billingProjectId;

  /// Settings for the endpoint.
  /// Structure is documented below.
  final pulumi.Input<FirewallEndpointEndpointSettings>? endpointSettings;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location (zone) of the firewall endpoint.
  final pulumi.Input<String> location;

  /// The name of the firewall endpoint resource.
  final pulumi.Input<String>? name;

  /// The name of the parent this firewall endpoint belongs to.
  /// Format: organizations/{organization_id}.
  final pulumi.Input<String> parent;

  FirewallEndpointArgs({
    required this.billingProjectId,
    this.endpointSettings,
    this.labels,
    required this.location,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingProjectId'] = billingProjectId;
    final endpointSettingsValue = endpointSettings;
    if (endpointSettingsValue != null) {
      map['endpointSettings'] = pulumi.Input.mapOptionalInputValue<
              FirewallEndpointEndpointSettings, Map<String, dynamic>>(
          endpointSettingsValue, (value) => value.toMap());
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
    map['parent'] = parent;
    return map;
  }

  factory FirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointArgs(
      billingProjectId: pulumi.Input.asInput<String>(map['billingProjectId']),
      endpointSettings:
          pulumi.Input.asOptionalInput<FirewallEndpointEndpointSettings>(
              map['endpointSettings']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
