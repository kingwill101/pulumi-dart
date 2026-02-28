// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_multicast_domain_group_multicast_domain_group_args_doc}
/// The set of arguments for MulticastDomainGroup.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_domain_group_multicast_domain_group_args_doc}
class MulticastDomainGroupArgs {
  /// An optional text description of the multicast domain group.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// A unique name for the multicast domain group.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastDomainGroupId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MulticastDomainGroupArgs].
  /// [description] An optional text description of the multicast domain group.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomainGroupId] A unique name for the multicast domain group.
  /// [project] The ID of the project in which the resource belongs.
  MulticastDomainGroupArgs({
    String? description,
    Map<String, String>? labels,
    required String location,
    required String multicastDomainGroupId,
    String? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      multicastDomainGroupId = pulumi.Input.asInput<String>(multicastDomainGroupId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'multicastDomainGroupId': multicastDomainGroupId,
      'project': ?project,
    };
  }

  factory MulticastDomainGroupArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      multicastDomainGroupId: map['multicastDomainGroupId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

