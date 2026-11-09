// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration.dart';

/// Input properties used for looking up and filtering Scope resources.
class ScopeState {
  /// ARN of the scope.
  final pulumi.Input<String?>? arn;
  /// Description of the scope.
  final pulumi.Input<String?>? description;
  /// Whether to publish the scope. When `true`, the scope is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published scope, the draft is saved on top of the published version. Defaults to `true`.
  final pulumi.Input<bool?>? isPublished;
  /// Name of the scope.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Accounts and resources that are in scope. See `scopeConfiguration` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScopeScopeConfiguration?>? scopeConfiguration;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ScopeState].
  /// [arn] ARN of the scope.
  /// [description] Description of the scope.
  /// [isPublished] Whether to publish the scope. When `true`, the scope is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published scope, the draft is saved on top of the published version. Defaults to `true`.
  /// [name] Name of the scope.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeConfiguration] Accounts and resources that are in scope. See `scopeConfiguration` Block below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ScopeState({
    this.arn,
    this.description,
    this.isPublished,
    this.name,
    this.region,
    this.scopeConfiguration,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'isPublished': ?isPublished,
      'name': ?name,
      'region': ?region,
      'scopeConfiguration': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfiguration, Map<String, dynamic>>(scopeConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ScopeState.fromMap(Map<String, dynamic> map) {
    return ScopeState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPublished: (() { final guardedValue = map['isPublished']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeConfiguration: (() { final guardedValue = map['scopeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
