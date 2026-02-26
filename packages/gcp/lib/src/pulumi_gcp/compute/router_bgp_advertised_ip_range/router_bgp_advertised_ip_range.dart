// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpAdvertisedIpRange {
  /// User-specified description for the IP range.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedMd5AuthenticationKeys"" pulumi-lang-dotnet=""NestedMd5AuthenticationKeys"" pulumi-lang-go=""nestedMd5AuthenticationKeys"" pulumi-lang-python=""nested_md5_authentication_keys"" pulumi-lang-yaml=""nestedMd5AuthenticationKeys"" pulumi-lang-java=""nestedMd5AuthenticationKeys"">"nested_md5_authentication_keys"</span>></a>The <span pulumi-lang-nodejs="`md5AuthenticationKeys`" pulumi-lang-dotnet="`Md5AuthenticationKeys`" pulumi-lang-go="`md5AuthenticationKeys`" pulumi-lang-python="`md5_authentication_keys`" pulumi-lang-yaml="`md5AuthenticationKeys`" pulumi-lang-java="`md5AuthenticationKeys`">`md5_authentication_keys`</span> block supports:
  final String? description;

  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final String range;

  RouterBgpAdvertisedIpRange({
    this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['range'] = range;
    return map;
  }

  factory RouterBgpAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterBgpAdvertisedIpRange(
      description:
          map['description'] == null ? null : map['description'] as String,
      range: map['range'] as String,
    );
  }
}
