// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_name_enum_value_response.dart';

/// Definition of InstanceState
class InstanceStateResponse {
  /// <p>The state of the instance as a 16-bit unsigned integer. </p> <p>The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values between 256 and 65,535. These numerical values are used for internal purposes and should be ignored.</p> <p>The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values between 0 and 255. </p> <p>The valid values for instance-state-code will all be in the range of the low byte and they are:</p> <ul> <li> <p> <code>0</code> : <code>pending</code> </p> </li> <li> <p> <code>16</code> : <code>running</code> </p> </li> <li> <p> <code>32</code> : <code>shutting-down</code> </p> </li> <li> <p> <code>48</code> : <code>terminated</code> </p> </li> <li> <p> <code>64</code> : <code>stopping</code> </p> </li> <li> <p> <code>80</code> : <code>stopped</code> </p> </li> </ul> <p>You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in decimal.</p>
  final pulumi.Input<int>? code;
  /// <p>The current state of the instance.</p>
  final pulumi.Input<InstanceStateNameEnumValueResponse>? name;

  /// Creates a new [InstanceStateResponse].
  /// [code] <p>The state of the instance as a 16-bit unsigned integer. </p> <p>The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values between 256 and 65,535. These numerical values are used for internal purposes and should be ignored.</p> <p>The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values between 0 and 255. </p> <p>The valid values for instance-state-code will all be in the range of the low byte and they are:</p> <ul> <li> <p> <code>0</code> : <code>pending</code> </p> </li> <li> <p> <code>16</code> : <code>running</code> </p> </li> <li> <p> <code>32</code> : <code>shutting-down</code> </p> </li> <li> <p> <code>48</code> : <code>terminated</code> </p> </li> <li> <p> <code>64</code> : <code>stopping</code> </p> </li> <li> <p> <code>80</code> : <code>stopped</code> </p> </li> </ul> <p>You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in decimal.</p>
  /// [name] <p>The current state of the instance.</p>
  InstanceStateResponse({
    this.code,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'name': ?pulumi.Input.mapOptionalInputValue<InstanceStateNameEnumValueResponse, Map<String, dynamic>>(name, (value) => value.toMap()),
    };
  }

  factory InstanceStateResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStateResponse(
      code: map['code'] == null ? null : (map['code']! as int).input(),
      name: map['name'] == null ? null : (InstanceStateNameEnumValueResponse.fromMap((map['name']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

