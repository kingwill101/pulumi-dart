// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SoftwareUpdateOptions
class SoftwareUpdateOptionsResponse {
  /// &lt;p&gt;Whether automatic service software updates are enabled for the domain.&lt;/p&gt;
  final pulumi.Input<bool>? autoSoftwareUpdateEnabled;

  /// Creates a new [SoftwareUpdateOptionsResponse].
  /// [autoSoftwareUpdateEnabled] &lt;p&gt;Whether automatic service software updates are enabled for the domain.&lt;/p&gt;
  SoftwareUpdateOptionsResponse({this.autoSoftwareUpdateEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSoftwareUpdateEnabled': ?autoSoftwareUpdateEnabled,
    };
  }

  factory SoftwareUpdateOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateOptionsResponse(
      autoSoftwareUpdateEnabled: (() {
        final guardedValue = map['autoSoftwareUpdateEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
