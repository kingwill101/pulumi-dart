// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_network_service_design_group_args_doc}
/// Arguments for getNetworkServiceDesignGroup.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_network_service_design_group_args_doc}
class GetNetworkServiceDesignGroupArgs {
  /// The name of the network service design group.
  final pulumi.Input<String> networkServiceDesignGroupName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkServiceDesignGroupArgs].
  /// [networkServiceDesignGroupName] The name of the network service design group.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkServiceDesignGroupArgs({
    required this.networkServiceDesignGroupName,
    required this.publisherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkServiceDesignGroupName': networkServiceDesignGroupName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkServiceDesignGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkServiceDesignGroupArgs(
      networkServiceDesignGroupName: pulumi.Input.fromValue(map['networkServiceDesignGroupName'] as String),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
