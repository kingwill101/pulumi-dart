// ignore_for_file: unused_element, unnecessary_cast

class TopicMessageTransformJavascriptUdf {
  /// JavaScript code that contains a function <span pulumi-lang-nodejs="`functionName`" pulumi-lang-dotnet="`FunctionName`" pulumi-lang-go="`functionName`" pulumi-lang-python="`function_name`" pulumi-lang-yaml="`functionName`" pulumi-lang-java="`functionName`">`function_name`</span> with the
  /// following signature:
  /// ```
  /// /**
  /// * Transforms a Pub/Sub message.
  /// *
  /// * @return {(Object<string, (string | Object<string, string>)>|null)} - To
  /// * filter a message, return `null`. To transform a message return a map
  /// * with the following keys:
  /// *   - (required) 'data' : {string}
  /// *   - (optional) 'attributes' : {Object<string, string>}
  /// * Returning empty `attributes` will remove all attributes from the
  /// * message.
  /// *
  /// * @param  {(Object<string, (string | Object<string, string>)>} Pub/Sub
  /// * message. Keys:
  /// *   - (required) 'data' : {string}
  /// *   - (required) 'attributes' : {Object<string, string>}
  /// *
  /// * @param  {Object<string, any>} metadata - Pub/Sub message metadata.
  /// * Keys:
  /// *   - (required) 'message_id'  : {string}
  /// *   - (optional) 'publish_time': {string} YYYY-MM-DDTHH:MM:SSZ format
  /// *   - (optional) 'ordering_key': {string}
  /// */
  /// function <function_name>(message, metadata) {
  /// }
  /// ```
  final String code;

  /// Name of the JavaScript function that should be applied to Pub/Sub messages.
  final String functionName;

  TopicMessageTransformJavascriptUdf({
    required this.code,
    required this.functionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['functionName'] = functionName;
    return map;
  }

  factory TopicMessageTransformJavascriptUdf.fromMap(Map<String, dynamic> map) {
    return TopicMessageTransformJavascriptUdf(
      code: map['code'] as String,
      functionName: map['functionName'] as String,
    );
  }
}
