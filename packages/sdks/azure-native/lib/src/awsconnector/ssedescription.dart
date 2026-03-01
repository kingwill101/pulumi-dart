// ignore_for_file: unused_element, unnecessary_cast

import 'ssestatus_enum_value.dart';

/// Definition of SSEDescription
class SSEDescription {
  /// <p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> </ul>
  final SSEStatusEnumValue? status;

  /// Creates a new [SSEDescription].
  /// [status] <p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> </ul>
  SSEDescription({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory SSEDescription.fromMap(Map<String, dynamic> map) {
    return SSEDescription(
      status: map['status'] == null ? null : SSEStatusEnumValue.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

