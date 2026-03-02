// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties for patching a Linux machine.
class InputLinuxParametersResponse {
  /// Classification category of patches to be patched. Allowed values are 'Critical', 'Security', and 'Other'.
  final pulumi.Input<List<String>>? classificationsToInclude;
  /// Package names to be excluded for patching.
  final pulumi.Input<List<String>>? packageNameMasksToExclude;
  /// Package names to be included for patching.
  final pulumi.Input<List<String>>? packageNameMasksToInclude;

  /// Creates a new [InputLinuxParametersResponse].
  /// [classificationsToInclude] Classification category of patches to be patched. Allowed values are 'Critical', 'Security', and 'Other'.
  /// [packageNameMasksToExclude] Package names to be excluded for patching.
  /// [packageNameMasksToInclude] Package names to be included for patching.
  InputLinuxParametersResponse({
    this.classificationsToInclude,
    this.packageNameMasksToExclude,
    this.packageNameMasksToInclude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToInclude': ?classificationsToInclude,
      'packageNameMasksToExclude': ?packageNameMasksToExclude,
      'packageNameMasksToInclude': ?packageNameMasksToInclude,
    };
  }

  factory InputLinuxParametersResponse.fromMap(Map<String, dynamic> map) {
    return InputLinuxParametersResponse(
      classificationsToInclude: map['classificationsToInclude'] == null ? null : ((map['classificationsToInclude'] as List).cast<String>()).input(),
      packageNameMasksToExclude: map['packageNameMasksToExclude'] == null ? null : ((map['packageNameMasksToExclude'] as List).cast<String>()).input(),
      packageNameMasksToInclude: map['packageNameMasksToInclude'] == null ? null : ((map['packageNameMasksToInclude'] as List).cast<String>()).input(),
    );
  }
}

