// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Application
class Application {
  /// &lt;p&gt;This option is for advanced users only. This is meta information about third-party applications that third-party vendors use for testing purposes.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? additionalInfo;

  /// &lt;p&gt;Arguments for Amazon EMR to pass to the application.&lt;/p&gt;
  final pulumi.Input<List<String>>? args;

  /// &lt;p&gt;The name of the application.&lt;/p&gt;
  final pulumi.Input<String>? name;

  /// &lt;p&gt;The version of the application.&lt;/p&gt;
  final pulumi.Input<String>? version;

  /// Creates a new [Application].
  /// [additionalInfo] &lt;p&gt;This option is for advanced users only. This is meta information about third-party applications that third-party vendors use for testing purposes.&lt;/p&gt;
  /// [args] &lt;p&gt;Arguments for Amazon EMR to pass to the application.&lt;/p&gt;
  /// [name] &lt;p&gt;The name of the application.&lt;/p&gt;
  /// [version] &lt;p&gt;The version of the application.&lt;/p&gt;
  Application({this.additionalInfo, this.args, this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo,
      'args': ?args,
      'name': ?name,
      'version': ?version,
    };
  }

  factory Application.fromMap(Map<String, dynamic> map) {
    return Application(
      additionalInfo: (() {
        final guardedValue = map['additionalInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
