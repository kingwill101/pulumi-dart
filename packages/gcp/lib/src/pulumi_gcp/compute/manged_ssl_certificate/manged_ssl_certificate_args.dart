// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../manged_ssl_certificate_managed/manged_ssl_certificate_managed.dart';

/// The set of arguments for MangedSslCertificate.
class MangedSslCertificateArgs {
  /// An optional description of this resource.
  final Input<String>? description;

  /// Properties relevant to a managed certificate.  These will be used if the
  /// certificate is managed (as indicated by a value of `MANAGED` in <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>).
  /// Structure is documented below.
  final Input<MangedSslCertificateManaged>? managed;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Enum field whose value is always `MANAGED` - used to signal to the API
  /// which type this is.
  /// Default value is `MANAGED`.
  /// Possible values are: `MANAGED`.
  final Input<String>? type;

  MangedSslCertificateArgs({
    this.description,
    this.managed,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final managedValue = managed;
    if (managedValue != null) {
      map['managed'] = Input.mapOptionalInputValue<MangedSslCertificateManaged,
          Map<String, dynamic>>(managedValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory MangedSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return MangedSslCertificateArgs(
      description: Input.asOptionalInput<String>(map['description']),
      managed:
          Input.asOptionalInput<MangedSslCertificateManaged>(map['managed']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
