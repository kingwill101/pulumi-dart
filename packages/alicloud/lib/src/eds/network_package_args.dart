// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_network_package_network_package_args_doc}
/// The set of arguments for NetworkPackage.
/// {@endtemplate}
/// {@macro pulumi_eds_network_package_network_package_args_doc}
class NetworkPackageArgs {
  /// The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps.
  final pulumi.Input<int> bandwidth;
  /// The ID of office site.
  final pulumi.Input<String> officeSiteId;

  /// Creates a new [NetworkPackageArgs].
  /// [bandwidth] The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps.
  /// [officeSiteId] The ID of office site.
  NetworkPackageArgs({
    required int bandwidth,
    required String officeSiteId,
  }) :
      bandwidth = pulumi.Input.asInput<int>(bandwidth),
      officeSiteId = pulumi.Input.asInput<String>(officeSiteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'officeSiteId': officeSiteId,
    };
  }

  factory NetworkPackageArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPackageArgs(
      bandwidth: map['bandwidth'] as int,
      officeSiteId: map['officeSiteId'] as String,
    );
  }
}

