// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'publisher_properties_format.dart';

/// {@template pulumi_hybridnetwork_publisher_args_doc}
/// The set of arguments for Publisher.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_publisher_args_doc}
class PublisherArgs {
  /// The managed identity of the publisher, if configured.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Publisher properties.
  final pulumi.Input<PublisherPropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String>? publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PublisherArgs].
  /// [identity] The managed identity of the publisher, if configured.
  /// [location] The geo-location where the resource lives
  /// [properties] Publisher properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PublisherArgs({
    ManagedServiceIdentity? identity,
    String? location,
    PublisherPropertiesFormat? properties,
    String? publisherName,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<PublisherPropertiesFormat>(properties),
      publisherName = pulumi.Input.asOptionalInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<PublisherPropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': ?publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PublisherArgs.fromMap(Map<String, dynamic> map) {
    return PublisherArgs(
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : PublisherPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      publisherName: map['publisherName'] == null ? null : map['publisherName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

