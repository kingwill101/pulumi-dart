// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_name_enum_value_response.dart';

/// Definition of InstanceState
class InstanceStateResponse {
  /// &lt;p&gt;The state of the instance as a 16-bit unsigned integer. &lt;/p&gt; &lt;p&gt;The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values between 256 and 65,535. These numerical values are used for internal purposes and should be ignored.&lt;/p&gt; &lt;p&gt;The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values between 0 and 255. &lt;/p&gt; &lt;p&gt;The valid values for instance-state-code will all be in the range of the low byte and they are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0&lt;/code&gt; : &lt;code&gt;pending&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;16&lt;/code&gt; : &lt;code&gt;running&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;32&lt;/code&gt; : &lt;code&gt;shutting-down&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;48&lt;/code&gt; : &lt;code&gt;terminated&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;64&lt;/code&gt; : &lt;code&gt;stopping&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;80&lt;/code&gt; : &lt;code&gt;stopped&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in decimal.&lt;/p&gt;
  final pulumi.Input<int>? code;
  /// &lt;p&gt;The current state of the instance.&lt;/p&gt;
  final pulumi.Input<InstanceStateNameEnumValueResponse>? name;

  /// Creates a new [InstanceStateResponse].
  /// [code] &lt;p&gt;The state of the instance as a 16-bit unsigned integer. &lt;/p&gt; &lt;p&gt;The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values between 256 and 65,535. These numerical values are used for internal purposes and should be ignored.&lt;/p&gt; &lt;p&gt;The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values between 0 and 255. &lt;/p&gt; &lt;p&gt;The valid values for instance-state-code will all be in the range of the low byte and they are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0&lt;/code&gt; : &lt;code&gt;pending&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;16&lt;/code&gt; : &lt;code&gt;running&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;32&lt;/code&gt; : &lt;code&gt;shutting-down&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;48&lt;/code&gt; : &lt;code&gt;terminated&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;64&lt;/code&gt; : &lt;code&gt;stopping&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;80&lt;/code&gt; : &lt;code&gt;stopped&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in decimal.&lt;/p&gt;
  /// [name] &lt;p&gt;The current state of the instance.&lt;/p&gt;
  const InstanceStateResponse({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStateNameEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

