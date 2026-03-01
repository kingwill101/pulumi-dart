// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_get_provider_action_collection_count_args_doc}
/// Arguments for getProviderActionCollectionCount.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_get_provider_action_collection_count_args_doc}
class GetProviderActionCollectionCountArgs {
  /// The resource type.
  final pulumi.Input<String>? type;

  /// Creates a new [GetProviderActionCollectionCountArgs].
  /// [type] The resource type.
  GetProviderActionCollectionCountArgs({
    pulumi.Output<String>? type,
  }) :
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory GetProviderActionCollectionCountArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderActionCollectionCountArgs(
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

