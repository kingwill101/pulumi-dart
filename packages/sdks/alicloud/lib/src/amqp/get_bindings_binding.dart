// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBindingsBinding {
  /// X-match Attributes. Valid Values: All: Default Value, All the Message Header of Key-Value Pairs Stored in the Must Match. Any: at Least One Pair of the Message Header of Key-Value Pairs Stored in the Must Match. This Parameter Applies Only to Headers Exchange Other Types of Exchange Is Invalid. Other Types of Exchange Here Can Either Be an Arbitrary Value.
  final pulumi.Input<String> argument;
  /// The Binding Key. The Source of the Binding Exchange Non-Topic Type: Can Only Contain Letters, Lowercase Letters, Numbers, and the Dash (-), the Underscore Character (_), English Periods (.) and the at Sign (@). Length from 1 to 255 Characters. The Source of the Binding Exchange Topic Type: Can Contain Letters, Lowercase Letters, Numbers, and the Dash (-), the Underscore Character (_), English Periods (.) and the at Sign (@). If You Include the Hash (.
  final pulumi.Input<String> bindingKey;
  /// The Target Binding Types.
  final pulumi.Input<String> bindingType;
  /// The Target Queue Or Exchange of the Name.
  final pulumi.Input<String> destinationName;
  /// The ID of the Binding. The value formats as `&lt;instance_id&gt;:&lt;virtual_host_name&gt;:&lt;source_exchange&gt;:&lt;destination_name&gt;`.
  final pulumi.Input<String> id;
  /// Instance Id.
  final pulumi.Input<String> instanceId;
  /// The Source Exchange Name.
  final pulumi.Input<String> sourceExchange;
  /// Virtualhost Name.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetBindingsBinding].
  /// [argument] X-match Attributes. Valid Values: All: Default Value, All the Message Header of Key-Value Pairs Stored in the Must Match. Any: at Least One Pair of the Message Header of Key-Value Pairs Stored in the Must Match. This Parameter Applies Only to Headers Exchange Other Types of Exchange Is Invalid. Other Types of Exchange Here Can Either Be an Arbitrary Value.
  /// [bindingKey] The Binding Key. The Source of the Binding Exchange Non-Topic Type: Can Only Contain Letters, Lowercase Letters, Numbers, and the Dash (-), the Underscore Character (_), English Periods (.) and the at Sign (@). Length from 1 to 255 Characters. The Source of the Binding Exchange Topic Type: Can Contain Letters, Lowercase Letters, Numbers, and the Dash (-), the Underscore Character (_), English Periods (.) and the at Sign (@). If You Include the Hash (.
  /// [bindingType] The Target Binding Types.
  /// [destinationName] The Target Queue Or Exchange of the Name.
  /// [id] The ID of the Binding. The value formats as `&lt;instance_id&gt;:&lt;virtual_host_name&gt;:&lt;source_exchange&gt;:&lt;destination_name&gt;`.
  /// [instanceId] Instance Id.
  /// [sourceExchange] The Source Exchange Name.
  /// [virtualHostName] Virtualhost Name.
  GetBindingsBinding({
    required this.argument,
    required this.bindingKey,
    required this.bindingType,
    required this.destinationName,
    required this.id,
    required this.instanceId,
    required this.sourceExchange,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': argument,
      'bindingKey': bindingKey,
      'bindingType': bindingType,
      'destinationName': destinationName,
      'id': id,
      'instanceId': instanceId,
      'sourceExchange': sourceExchange,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetBindingsBinding.fromMap(Map<String, dynamic> map) {
    return GetBindingsBinding(
      argument: pulumi.Input.fromValue(map['argument'] as String),
      bindingKey: pulumi.Input.fromValue(map['bindingKey'] as String),
      bindingType: pulumi.Input.fromValue(map['bindingType'] as String),
      destinationName: pulumi.Input.fromValue(map['destinationName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      sourceExchange: pulumi.Input.fromValue(map['sourceExchange'] as String),
      virtualHostName: pulumi.Input.fromValue(map['virtualHostName'] as String),
    );
  }
}

