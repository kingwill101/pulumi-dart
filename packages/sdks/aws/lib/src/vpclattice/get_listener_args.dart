// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_listener_get_listener_args_doc}
/// Arguments for getListener.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_listener_get_listener_args_doc}
class GetListenerArgs {
  /// ID or Amazon Resource Name (ARN) of the listener
  final pulumi.Input<String> listenerIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID or Amazon Resource Name (ARN) of the service network
  final pulumi.Input<String> serviceIdentifier;
  /// List of tags associated with the listener.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetListenerArgs].
  /// [listenerIdentifier] ID or Amazon Resource Name (ARN) of the listener
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] ID or Amazon Resource Name (ARN) of the service network
  /// [tags] List of tags associated with the listener.
  GetListenerArgs({
    required this.listenerIdentifier,
    this.region,
    required this.serviceIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerIdentifier': listenerIdentifier,
      'region': ?region,
      'serviceIdentifier': serviceIdentifier,
      'tags': ?tags,
    };
  }

  factory GetListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerArgs(
      listenerIdentifier: (map['listenerIdentifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceIdentifier: (map['serviceIdentifier'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

