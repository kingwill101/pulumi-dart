// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_service_design_version_properties_format.dart';

/// {@template pulumi_hybridnetwork_network_service_design_version_args_doc}
/// The set of arguments for NetworkServiceDesignVersion.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_network_service_design_version_args_doc}
class NetworkServiceDesignVersionArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the network service design group.
  final pulumi.Input<String> networkServiceDesignGroupName;
  /// The name of the network service design version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  final pulumi.Input<String>? networkServiceDesignVersionName;
  /// network service design version properties.
  final pulumi.Input<NetworkServiceDesignVersionPropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkServiceDesignVersionArgs].
  /// [location] The geo-location where the resource lives
  /// [networkServiceDesignGroupName] The name of the network service design group.
  /// [networkServiceDesignVersionName] The name of the network service design version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  /// [properties] network service design version properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const NetworkServiceDesignVersionArgs({
    this.location,
    required this.networkServiceDesignGroupName,
    this.networkServiceDesignVersionName,
    this.properties,
    required this.publisherName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkServiceDesignGroupName': networkServiceDesignGroupName,
      'networkServiceDesignVersionName': ?networkServiceDesignVersionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkServiceDesignVersionPropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkServiceDesignVersionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignVersionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkServiceDesignGroupName: pulumi.Input.fromValue(map['networkServiceDesignGroupName'] as String),
      networkServiceDesignVersionName: (() { final guardedValue = map['networkServiceDesignVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkServiceDesignVersionPropertiesFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
