// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_network_service_design_version_args_doc}
/// Arguments for getNetworkServiceDesignVersion.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_network_service_design_version_args_doc}
class GetNetworkServiceDesignVersionArgs {
  /// The name of the network service design group.
  final pulumi.Input<String> networkServiceDesignGroupName;
  /// The name of the network service design version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  final pulumi.Input<String> networkServiceDesignVersionName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkServiceDesignVersionArgs].
  /// [networkServiceDesignGroupName] The name of the network service design group.
  /// [networkServiceDesignVersionName] The name of the network service design version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkServiceDesignVersionArgs({
    required this.networkServiceDesignGroupName,
    required this.networkServiceDesignVersionName,
    required this.publisherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkServiceDesignGroupName': networkServiceDesignGroupName,
      'networkServiceDesignVersionName': networkServiceDesignVersionName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkServiceDesignVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkServiceDesignVersionArgs(
      networkServiceDesignGroupName: (map['networkServiceDesignGroupName'] as String).input(),
      networkServiceDesignVersionName: (map['networkServiceDesignVersionName'] as String).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

