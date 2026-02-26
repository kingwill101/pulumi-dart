// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceProfile.
class InstanceProfileArgs2 {
  /// Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> must be unique, regardless of the <span pulumi-lang-nodejs="`path`" pulumi-lang-dotnet="`Path`" pulumi-lang-go="`path`" pulumi-lang-python="`path`" pulumi-lang-yaml="`path`" pulumi-lang-java="`path`">`path`</span> or <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>. In other words, if there are different <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span> or <span pulumi-lang-nodejs="`path`" pulumi-lang-dotnet="`Path`" pulumi-lang-go="`path`" pulumi-lang-python="`path`" pulumi-lang-yaml="`path`" pulumi-lang-java="`path`">`path`</span> values but the same <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  final Input<String>? path;

  /// Name of the role to add to the profile.
  final Input<String>? role;

  /// Map of resource tags for the IAM Instance Profile. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  InstanceProfileArgs2({
    this.name,
    this.namePrefix,
    this.path,
    this.role,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory InstanceProfileArgs2.fromMap(Map<String, dynamic> map) {
    return InstanceProfileArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      path: Input.asOptionalInput<String>(map['path']),
      role: Input.asOptionalInput<String>(map['role']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
