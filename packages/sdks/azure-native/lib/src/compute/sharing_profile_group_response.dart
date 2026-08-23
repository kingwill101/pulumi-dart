// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Group of the gallery sharing profile
class SharingProfileGroupResponse {
  /// A list of subscription/tenant ids the gallery is aimed to be shared to.
  final pulumi.Input<List<String>>? ids;
  /// This property allows you to specify the type of sharing group. Possible values are: **Subscriptions,** **AADTenants.**
  final pulumi.Input<String>? type;

  /// Creates a new [SharingProfileGroupResponse].
  /// [ids] A list of subscription/tenant ids the gallery is aimed to be shared to.
  /// [type] This property allows you to specify the type of sharing group. Possible values are: **Subscriptions,** **AADTenants.**
  const SharingProfileGroupResponse({
    this.ids,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'type': ?type,
    };
  }

  factory SharingProfileGroupResponse.fromMap(Map<String, dynamic> map) {
    return SharingProfileGroupResponse(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
