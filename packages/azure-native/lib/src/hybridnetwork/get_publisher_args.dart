// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_publisher_args_doc}
/// Arguments for getPublisher.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_publisher_args_doc}
class GetPublisherArgs {
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublisherArgs].
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPublisherArgs({
    required String publisherName,
    required String resourceGroupName,
  }) :
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublisherArgs.fromMap(Map<String, dynamic> map) {
    return GetPublisherArgs(
      publisherName: map['publisherName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

