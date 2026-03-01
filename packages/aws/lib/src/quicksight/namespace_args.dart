// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_timeouts.dart';

/// {@template pulumi_quicksight_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_quicksight_namespace_namespace_args_doc}
class NamespaceArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  final pulumi.Input<String>? identityStore;

  /// Name of the namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<NamespaceTimeouts>? timeouts;

  /// Creates a new [NamespaceArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identityStore] User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  /// [namespace] Name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  NamespaceArgs({
    String? awsAccountId,
    String? identityStore,
    required String namespace,
    String? region,
    Map<String, String>? tags,
    NamespaceTimeouts? timeouts,
  }) : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
       identityStore = pulumi.Input.asOptionalInput<String>(identityStore),
       namespace = pulumi.Input.asInput<String>(namespace),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<NamespaceTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'identityStore': ?identityStore,
      'namespace': namespace,
      'region': ?region,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            NamespaceTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      awsAccountId: map['awsAccountId'] == null
          ? null
          : map['awsAccountId'] as String,
      identityStore: map['identityStore'] == null
          ? null
          : map['identityStore'] as String,
      namespace: map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : NamespaceTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
