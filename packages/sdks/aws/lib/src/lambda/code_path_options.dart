// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to control which paths/packages should be included or excluded in the zip file containing the code for the AWS lambda.
class CodePathOptions {
  /// Packages to explicitly exclude from the Assets for a serialized closure. This can be used when clients want to trim down the size of a closure, and they know that some package won't ever actually be needed at runtime, but is still a dependency of some package that is being used at runtime.
  final pulumi.Input<List<String>>? extraExcludePackages;

  /// Extra packages to include when producing the Assets for a serialized closure. This can be useful if the packages are acquired in a way that the serialization code does not understand. For example, if there was some sort of module that was pulled in based off of a computed string.
  final pulumi.Input<List<String>>? extraIncludePackages;

  /// Local file/directory paths that should be included when producing the Assets for a serialized closure.
  final pulumi.Input<List<String>>? extraIncludePaths;

  /// Creates a new [CodePathOptions].
  /// [extraExcludePackages] Packages to explicitly exclude from the Assets for a serialized closure. This can be used when clients want to trim down the size of a closure, and they know that some package won't ever actually be needed at runtime, but is still a dependency of some package that is being used at runtime.
  /// [extraIncludePackages] Extra packages to include when producing the Assets for a serialized closure. This can be useful if the packages are acquired in a way that the serialization code does not understand. For example, if there was some sort of module that was pulled in based off of a computed string.
  /// [extraIncludePaths] Local file/directory paths that should be included when producing the Assets for a serialized closure.
  CodePathOptions({
    this.extraExcludePackages,
    this.extraIncludePackages,
    this.extraIncludePaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraExcludePackages': ?extraExcludePackages,
      'extraIncludePackages': ?extraIncludePackages,
      'extraIncludePaths': ?extraIncludePaths,
    };
  }

  factory CodePathOptions.fromMap(Map<String, dynamic> map) {
    return CodePathOptions(
      extraExcludePackages: (() {
        final guardedValue = map['extraExcludePackages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      extraIncludePackages: (() {
        final guardedValue = map['extraIncludePackages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      extraIncludePaths: (() {
        final guardedValue = map['extraIncludePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
