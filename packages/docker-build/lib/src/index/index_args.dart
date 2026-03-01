// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry.dart';

/// {@template pulumi_index_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_index_index_args_doc}
class IndexArgs {
  /// If true, push the index to the target registry.
  ///
  /// Defaults to `true`.
  final pulumi.Input<bool>? push;
  /// Authentication for the registry where the tagged index will be pushed.
  ///
  /// Credentials can also be included with the provider's configuration.
  final pulumi.Input<Registry>? registry;
  /// Existing images to include in the index.
  final pulumi.Input<List<String>> sources;
  /// The tag to apply to the index.
  final pulumi.Input<String> tag;

  /// Creates a new [IndexArgs].
  /// [push] If true, push the index to the target registry.
  /// [registry] Authentication for the registry where the tagged index will be pushed.
  /// [sources] Existing images to include in the index.
  /// [tag] The tag to apply to the index.
  IndexArgs({
    bool? push,
    Registry? registry,
    required List<String> sources,
    required String tag,
  }) :
      push = pulumi.Input.asOptionalInput<bool>(push),
      registry = pulumi.Input.asOptionalInput<Registry>(registry),
      sources = pulumi.Input.asInput<List<String>>(sources),
      tag = pulumi.Input.asInput<String>(tag);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'push': ?push,
      'registry': ?pulumi.Input.mapOptionalInputValue<Registry, Map<String, dynamic>>(registry, (value) => value.toMap()),
      'sources': sources,
      'tag': tag,
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      push: map['push'] == null ? null : map['push'] as bool,
      registry: map['registry'] == null ? null : Registry.fromMap((map['registry'] as Map).cast<String, dynamic>()),
      sources: (map['sources'] as List).cast<String>(),
      tag: map['tag'] as String,
    );
  }
}

