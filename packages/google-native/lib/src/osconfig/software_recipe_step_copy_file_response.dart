// ignore_for_file: unused_element, unnecessary_cast

/// Copies the artifact to the specified path on the instance.
class SoftwareRecipeStepCopyFileResponse {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// The absolute path on the instance to put the file.
  final String destination;

  /// Whether to allow this step to overwrite existing files. If this is false and the file already exists the file is not overwritten and the step is considered a success. Defaults to false.
  final bool overwrite;

  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final String permissions;

  /// Creates a new [SoftwareRecipeStepCopyFileResponse].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] The absolute path on the instance to put the file.
  /// [overwrite] Whether to allow this step to overwrite existing files. If this is false and the file already exists the file is not overwritten and the step is considered a success. Defaults to false.
  /// [permissions] Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  SoftwareRecipeStepCopyFileResponse({
    required this.artifactId,
    required this.destination,
    required this.overwrite,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    map['destination'] = destination;
    map['overwrite'] = overwrite;
    map['permissions'] = permissions;
    return map;
  }

  factory SoftwareRecipeStepCopyFileResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepCopyFileResponse(
      artifactId: map['artifactId'] as String,
      destination: map['destination'] as String,
      overwrite: map['overwrite'] as bool,
      permissions: map['permissions'] as String,
    );
  }
}
