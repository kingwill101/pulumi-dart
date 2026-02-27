// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_response.dart';
import 'mixin_response.dart';
import 'option_response.dart';
import 'source_context_response_servicemanagement_v1.dart';

/// Api is a light-weight descriptor for an API Interface. Interfaces are also described as "protocol buffer services" in some contexts, such as by the "service" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as "APIs" in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.
class ApiResponse {
  /// The methods of this interface, in unspecified order.
  final List<MethodResponse> methods;

  /// Included interfaces. See Mixin.
  final List<MixinResponse> mixins;

  /// The fully qualified name of this interface, including package name followed by the interface's simple name.
  final String name;

  /// Any metadata attached to the interface.
  final List<OptionResponse> options;

  /// Source context for the protocol buffer service represented by this message.
  final SourceContextResponseServicemanagementV1 sourceContext;

  /// The source syntax of the service.
  final String syntax;

  /// A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  final String version;

  ApiResponse({
    required this.methods,
    required this.mixins,
    required this.name,
    required this.options,
    required this.sourceContext,
    required this.syntax,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['methods'] =
        pulumi.Input.encodeList<MethodResponse, Map<String, dynamic>>(
            methods, (value) => value.toMap());
    map['mixins'] =
        pulumi.Input.encodeList<MixinResponse, Map<String, dynamic>>(
            mixins, (value) => value.toMap());
    map['name'] = name;
    map['options'] =
        pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(
            options, (value) => value.toMap());
    map['sourceContext'] = sourceContext.toMap();
    map['syntax'] = syntax;
    map['version'] = version;
    return map;
  }

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      methods: pulumi.Input.decodeList<MethodResponse>(
          map['methods'],
          (value) =>
              MethodResponse.fromMap((value as Map).cast<String, dynamic>())),
      mixins: pulumi.Input.decodeList<MixinResponse>(
          map['mixins'],
          (value) =>
              MixinResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      options: pulumi.Input.decodeList<OptionResponse>(
          map['options'],
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: SourceContextResponseServicemanagementV1.fromMap(
          (map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] as String,
      version: map['version'] as String,
    );
  }
}
