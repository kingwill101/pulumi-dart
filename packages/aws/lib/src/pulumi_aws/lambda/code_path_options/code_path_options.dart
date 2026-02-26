// ignore_for_file: unused_element, unnecessary_cast

/// Options to control which paths/packages should be included or excluded in the zip file containing the code for the AWS lambda.
class CodePathOptions {
  /// Packages to explicitly exclude from the Assets for a serialized closure. This can be used when clients want to trim down the size of a closure, and they know that some package won't ever actually be needed at runtime, but is still a dependency of some package that is being used at runtime.
  final List<String>? extraExcludePackages;

  /// Extra packages to include when producing the Assets for a serialized closure. This can be useful if the packages are acquired in a way that the serialization code does not understand. For example, if there was some sort of module that was pulled in based off of a computed string.
  final List<String>? extraIncludePackages;

  /// Local file/directory paths that should be included when producing the Assets for a serialized closure.
  final List<String>? extraIncludePaths;

  CodePathOptions({
    this.extraExcludePackages,
    this.extraIncludePackages,
    this.extraIncludePaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final extraExcludePackagesValue = extraExcludePackages;
    if (extraExcludePackagesValue != null) {
      map['extraExcludePackages'] = extraExcludePackagesValue;
    }
    final extraIncludePackagesValue = extraIncludePackages;
    if (extraIncludePackagesValue != null) {
      map['extraIncludePackages'] = extraIncludePackagesValue;
    }
    final extraIncludePathsValue = extraIncludePaths;
    if (extraIncludePathsValue != null) {
      map['extraIncludePaths'] = extraIncludePathsValue;
    }
    return map;
  }

  factory CodePathOptions.fromMap(Map<String, dynamic> map) {
    return CodePathOptions(
      extraExcludePackages: map['extraExcludePackages'] == null
          ? null
          : (map['extraExcludePackages'] as List).cast<String>(),
      extraIncludePackages: map['extraIncludePackages'] == null
          ? null
          : (map['extraIncludePackages'] as List).cast<String>(),
      extraIncludePaths: map['extraIncludePaths'] == null
          ? null
          : (map['extraIncludePaths'] as List).cast<String>(),
    );
  }
}
