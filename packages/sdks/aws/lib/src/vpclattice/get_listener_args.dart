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
    required pulumi.Output<String> listenerIdentifier,
    pulumi.Output<String>? region,
    required pulumi.Output<String> serviceIdentifier,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      listenerIdentifier = pulumi.Input.asInput<String>(listenerIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceIdentifier = pulumi.Input.asInput<String>(serviceIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      listenerIdentifier: pulumi.Output.create<String>(map['listenerIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceIdentifier: pulumi.Output.create<String>(map['serviceIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

