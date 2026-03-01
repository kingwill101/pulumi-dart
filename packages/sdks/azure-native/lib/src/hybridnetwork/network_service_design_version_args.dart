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
  NetworkServiceDesignVersionArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> networkServiceDesignGroupName,
    pulumi.Output<String>? networkServiceDesignVersionName,
    pulumi.Output<NetworkServiceDesignVersionPropertiesFormat>? properties,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkServiceDesignGroupName = pulumi.Input.asInput<String>(networkServiceDesignGroupName),
      networkServiceDesignVersionName = pulumi.Input.asOptionalInput<String>(networkServiceDesignVersionName),
      properties = pulumi.Input.asOptionalInput<NetworkServiceDesignVersionPropertiesFormat>(properties),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkServiceDesignGroupName: pulumi.Output.create<String>(map['networkServiceDesignGroupName'] as String),
      networkServiceDesignVersionName: map['networkServiceDesignVersionName'] == null ? null : pulumi.Output.create<String>(map['networkServiceDesignVersionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<NetworkServiceDesignVersionPropertiesFormat>(NetworkServiceDesignVersionPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

