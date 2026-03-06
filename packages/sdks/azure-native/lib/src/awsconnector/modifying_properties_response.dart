// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'property_value_type_enum_value_response.dart';

/// Definition of ModifyingProperties
class ModifyingPropertiesResponse {
  /// &lt;p&gt;The current value of the domain property that is being modified.&lt;/p&gt;
  final pulumi.Input<String>? activeValue;
  /// &lt;p&gt;The name of the property that is currently being modified.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;The value that the property that is currently being modified will eventually have.&lt;/p&gt;
  final pulumi.Input<String>? pendingValue;
  /// &lt;p&gt;The type of value that is currently being modified. Properties can have two types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PLAIN_TEXT&lt;/code&gt;: Contain direct values such as '1', 'True', or 'c5.large.search'.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;STRINGIFIED_JSON&lt;/code&gt;: Contain content in JSON format, such as {'Enabled':'True'}'.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<PropertyValueTypeEnumValueResponse>? valueType;

  /// Creates a new [ModifyingPropertiesResponse].
  /// [activeValue] &lt;p&gt;The current value of the domain property that is being modified.&lt;/p&gt;
  /// [name] &lt;p&gt;The name of the property that is currently being modified.&lt;/p&gt;
  /// [pendingValue] &lt;p&gt;The value that the property that is currently being modified will eventually have.&lt;/p&gt;
  /// [valueType] &lt;p&gt;The type of value that is currently being modified. Properties can have two types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PLAIN_TEXT&lt;/code&gt;: Contain direct values such as '1', 'True', or 'c5.large.search'.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;STRINGIFIED_JSON&lt;/code&gt;: Contain content in JSON format, such as {'Enabled':'True'}'.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  const ModifyingPropertiesResponse({
    this.activeValue,
    this.name,
    this.pendingValue,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeValue': ?activeValue,
      'name': ?name,
      'pendingValue': ?pendingValue,
      'valueType': ?pulumi.Input.mapOptionalInputValue<PropertyValueTypeEnumValueResponse, Map<String, dynamic>>(valueType, (value) => value.toMap()),
    };
  }

  factory ModifyingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ModifyingPropertiesResponse(
      activeValue: (() { final guardedValue = map['activeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pendingValue: (() { final guardedValue = map['pendingValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PropertyValueTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

