// ignore_for_file: unused_element, unnecessary_cast

class PeeringAttachmentOptions {
  /// Indicates whether dynamic routing is enabled or disabled.. Supports <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span> and <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final String? dynamicRouting;

  PeeringAttachmentOptions({
    this.dynamicRouting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dynamicRoutingValue = dynamicRouting;
    if (dynamicRoutingValue != null) {
      map['dynamicRouting'] = dynamicRoutingValue;
    }
    return map;
  }

  factory PeeringAttachmentOptions.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentOptions(
      dynamicRouting: map['dynamicRouting'] == null
          ? null
          : map['dynamicRouting'] as String,
    );
  }
}
