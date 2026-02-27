// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_syntax.dart';
import 'method.dart';
import 'mixin.dart';
import 'option.dart';
import 'source_context_servicemanagement_v1.dart';

/// Api is a light-weight descriptor for an API Interface. Interfaces are also described as "protocol buffer services" in some contexts, such as by the "service" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as "APIs" in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.
class Api {
  /// The methods of this interface, in unspecified order.
  final List<Method>? methods;

  /// Included interfaces. See Mixin.
  final List<Mixin>? mixins;

  /// The fully qualified name of this interface, including package name followed by the interface's simple name.
  final String? name;

  /// Any metadata attached to the interface.
  final List<Option>? options;

  /// Source context for the protocol buffer service represented by this message.
  final SourceContextServicemanagementV1? sourceContext;

  /// The source syntax of the service.
  final ApiSyntax? syntax;

  /// A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  final String? version;

  Api({
    this.methods,
    this.mixins,
    this.name,
    this.options,
    this.sourceContext,
    this.syntax,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = pulumi.Input.encodeList<Method, Map<String, dynamic>>(
          methodsValue, (value) => value.toMap());
    }
    final mixinsValue = mixins;
    if (mixinsValue != null) {
      map['mixins'] = pulumi.Input.encodeList<Mixin, Map<String, dynamic>>(
          mixinsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = pulumi.Input.encodeList<Option, Map<String, dynamic>>(
          optionsValue, (value) => value.toMap());
    }
    final sourceContextValue = sourceContext;
    if (sourceContextValue != null) {
      map['sourceContext'] = sourceContextValue.toMap();
    }
    final syntaxValue = syntax;
    if (syntaxValue != null) {
      map['syntax'] = syntaxValue.value;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory Api.fromMap(Map<String, dynamic> map) {
    return Api(
      methods: map['methods'] == null
          ? null
          : pulumi.Input.decodeList<Method>(
              map['methods'],
              (value) =>
                  Method.fromMap((value as Map).cast<String, dynamic>())),
      mixins: map['mixins'] == null
          ? null
          : pulumi.Input.decodeList<Mixin>(map['mixins'],
              (value) => Mixin.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null
          ? null
          : pulumi.Input.decodeList<Option>(
              map['options'],
              (value) =>
                  Option.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: map['sourceContext'] == null
          ? null
          : SourceContextServicemanagementV1.fromMap(
              (map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] == null
          ? null
          : ApiSyntax.fromValue(map['syntax'] as String),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
