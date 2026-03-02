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
    this.location,
    this.networkServiceDesignGroupName,
    this.properties,
    required this.publisherName,
    required this.resourceGroupName,
    this.tags,
  });

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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkServiceDesignGroupName: map['networkServiceDesignGroupName'] == null ? null : (map['networkServiceDesignGroupName']! as String).input(),
      properties: map['properties'] == null ? null : (NetworkServiceDesignGroupPropertiesFormat.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

