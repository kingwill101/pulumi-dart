// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_service_design_group_properties_format.dart';

/// {@template pulumi_hybridnetwork_network_service_design_group_args_doc}
/// The set of arguments for NetworkServiceDesignGroup.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_network_service_design_group_args_doc}
class NetworkServiceDesignGroupArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the network service design group.
  final pulumi.Input<String>? networkServiceDesignGroupName;
  /// network service design group properties.
  final pulumi.Input<NetworkServiceDesignGroupPropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkServiceDesignGroupArgs].
  /// [location] The geo-location where the resource lives
  /// [networkServiceDesignGroupName] The name of the network service design group.
  /// [properties] network service design group properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkServiceDesignGroupArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkServiceDesignGroupName,
    pulumi.Output<NetworkServiceDesignGroupPropertiesFormat>? properties,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkServiceDesignGroupName = pulumi.Input.asOptionalInput<String>(networkServiceDesignGroupName),
      properties = pulumi.Input.asOptionalInput<NetworkServiceDesignGroupPropertiesFormat>(properties),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkServiceDesignGroupName': ?networkServiceDesignGroupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkServiceDesignGroupPropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkServiceDesignGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignGroupArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkServiceDesignGroupName: map['networkServiceDesignGroupName'] == null ? null : pulumi.Output.create<String>(map['networkServiceDesignGroupName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<NetworkServiceDesignGroupPropertiesFormat>(NetworkServiceDesignGroupPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

