// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_activation_traffic_spec.dart';

/// {@template pulumi_networkservices_multicast_domain_activation_multicast_domain_activation_args_doc}
/// The set of arguments for MulticastDomainActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_domain_activation_multicast_domain_activation_args_doc}
class MulticastDomainActivationArgs {
  /// An optional text description of the multicast domain activation.
  final pulumi.Input<String>? description;

  /// Option to allow disabling placement policy for multicast infrastructure.
  /// Only applicable if the activation is for a domain associating with a
  /// multicast domain group.
  final pulumi.Input<bool>? disablePlacementPolicy;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The resource name of the multicast domain to activate.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final pulumi.Input<String> multicastDomain;

  /// A unique name for the multicast domain activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastDomainActivationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the traffic volume and multicast group scale parameters that are
  /// used to set up multicast infrastructure for a multicast domain in a zone.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainActivationTrafficSpec>? trafficSpec;

  /// Creates a new [MulticastDomainActivationArgs].
  /// [description] An optional text description of the multicast domain activation.
  /// [disablePlacementPolicy] Option to allow disabling placement policy for multicast infrastructure.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomain] The resource name of the multicast domain to activate.
  /// [multicastDomainActivationId] A unique name for the multicast domain activation.
  /// [project] The ID of the project in which the resource belongs.
  /// [trafficSpec] Specifies the traffic volume and multicast group scale parameters that are
  MulticastDomainActivationArgs({
    String? description,
    bool? disablePlacementPolicy,
    Map<String, String>? labels,
    required String location,
    required String multicastDomain,
    required String multicastDomainActivationId,
    String? project,
    MulticastDomainActivationTrafficSpec? trafficSpec,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        disablePlacementPolicy =
            pulumi.Input.asOptionalInput<bool>(disablePlacementPolicy),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        multicastDomain = pulumi.Input.asInput<String>(multicastDomain),
        multicastDomainActivationId =
            pulumi.Input.asInput<String>(multicastDomainActivationId),
        project = pulumi.Input.asOptionalInput<String>(project),
        trafficSpec =
            pulumi.Input.asOptionalInput<MulticastDomainActivationTrafficSpec>(
                trafficSpec);

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
      map['trafficSpec'] = pulumi.Input.mapOptionalInputValue<
          MulticastDomainActivationTrafficSpec,
          Map<String, dynamic>>(trafficSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory MulticastDomainActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainActivationArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      disablePlacementPolicy: map['disablePlacementPolicy'] == null
          ? null
          : map['disablePlacementPolicy'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      multicastDomain: map['multicastDomain'] as String,
      multicastDomainActivationId: map['multicastDomainActivationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      trafficSpec: map['trafficSpec'] == null
          ? null
          : MulticastDomainActivationTrafficSpec.fromMap(
              (map['trafficSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
