// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicast_domain_activation_traffic_spec/multicast_domain_activation_traffic_spec.dart';

/// The set of arguments for MulticastDomainActivation.
class MulticastDomainActivationArgs {
  /// An optional text description of the multicast domain activation.
  final Input<String>? description;

  /// Option to allow disabling placement policy for multicast infrastructure.
  /// Only applicable if the activation is for a domain associating with a
  /// multicast domain group.
  final Input<bool>? disablePlacementPolicy;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The resource name of the multicast domain to activate.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final Input<String> multicastDomain;

  /// A unique name for the multicast domain activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final Input<String> multicastDomainActivationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies the traffic volume and multicast group scale parameters that are
  /// used to set up multicast infrastructure for a multicast domain in a zone.
  /// Structure is documented below.
  final Input<MulticastDomainActivationTrafficSpec>? trafficSpec;

  MulticastDomainActivationArgs({
    this.description,
    this.disablePlacementPolicy,
    this.labels,
    required this.location,
    required this.multicastDomain,
    required this.multicastDomainActivationId,
    this.project,
    this.trafficSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disablePlacementPolicyValue = disablePlacementPolicy;
    if (disablePlacementPolicyValue != null) {
      map['disablePlacementPolicy'] = disablePlacementPolicyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['multicastDomain'] = multicastDomain;
    map['multicastDomainActivationId'] = multicastDomainActivationId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trafficSpecValue = trafficSpec;
    if (trafficSpecValue != null) {
      map['trafficSpec'] = Input.mapOptionalInputValue<
          MulticastDomainActivationTrafficSpec,
          Map<String, dynamic>>(trafficSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory MulticastDomainActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainActivationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      disablePlacementPolicy:
          Input.asOptionalInput<bool>(map['disablePlacementPolicy']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      multicastDomain: Input.asInput<String>(map['multicastDomain']),
      multicastDomainActivationId:
          Input.asInput<String>(map['multicastDomainActivationId']),
      project: Input.asOptionalInput<String>(map['project']),
      trafficSpec: Input.asOptionalInput<MulticastDomainActivationTrafficSpec>(
          map['trafficSpec']),
    );
  }
}
