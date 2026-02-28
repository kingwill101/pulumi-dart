// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_get_namespace_get_namespace_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_get_namespace_get_namespace_args_doc}
class GetNamespaceArgs {
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetNamespaceArgs].
  /// [namespaceName] The name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetNamespaceArgs({
    required String namespaceName,
    String? region,
  })  : namespaceName = pulumi.Input.asInput<String>(namespaceName),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespaceName'] = namespaceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceArgs(
      namespaceName: map['namespaceName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
