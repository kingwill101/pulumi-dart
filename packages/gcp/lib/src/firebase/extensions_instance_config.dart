// ignore_for_file: unused_element, unnecessary_cast

class ExtensionsInstanceConfig {
  /// List of extension events selected by consumer that extension is allowed to
  /// emit, identified by their types.
  final List<String>? allowedEventTypes;

  /// (Output)
  /// The time at which the Extension Instance Config was created.
  final String? createTime;

  /// Fully qualified Eventarc resource name that consumers should use for event triggers.
  final String? eventarcChannel;

  /// The ref of the Extension from the Registry (e.g. publisher-id/awesome-extension)
  final String extensionRef;

  /// The version of the Extension from the Registry (e.g. 1.0.3). If left blank, latest is assumed.
  final String? extensionVersion;

  /// (Output)
  /// The unique identifier for this configuration.
  final String? name;

  /// Environment variables that may be configured for the Extension
  final Map<String, String> params;

  /// (Output)
  /// Postinstall instructions to be shown for this Extension, with
  /// template strings representing function and parameter values substituted
  /// with actual values. These strings include: ${param:FOO},
  /// ${function:myFunc.url},
  /// ${function:myFunc.name}, and ${function:myFunc.location}
  final String? populatedPostinstallContent;

  /// Params whose values are only available at deployment time.
  /// Unlike other params, these will not be set as environment variables on
  /// functions. See a full list of system parameters at
  /// https://firebase.google.com/docs/extensions/publishers/parameters#system_parameters
  final Map<String, String>? systemParams;

  /// Creates a new [ExtensionsInstanceConfig].
  /// [allowedEventTypes] List of extension events selected by consumer that extension is allowed to
  /// [createTime] (Output)
  /// [eventarcChannel] Fully qualified Eventarc resource name that consumers should use for event triggers.
  /// [extensionRef] The ref of the Extension from the Registry (e.g. publisher-id/awesome-extension)
  /// [extensionVersion] The version of the Extension from the Registry (e.g. 1.0.3). If left blank, latest is assumed.
  /// [name] (Output)
  /// [params] Environment variables that may be configured for the Extension
  /// [populatedPostinstallContent] (Output)
  /// [systemParams] Params whose values are only available at deployment time.
  ExtensionsInstanceConfig({
    this.allowedEventTypes,
    this.createTime,
    this.eventarcChannel,
    required this.extensionRef,
    this.extensionVersion,
    this.name,
    required this.params,
    this.populatedPostinstallContent,
    this.systemParams,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedEventTypesValue = allowedEventTypes;
    if (allowedEventTypesValue != null) {
      map['allowedEventTypes'] = allowedEventTypesValue;
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final eventarcChannelValue = eventarcChannel;
    if (eventarcChannelValue != null) {
      map['eventarcChannel'] = eventarcChannelValue;
    }
    map['extensionRef'] = extensionRef;
    final extensionVersionValue = extensionVersion;
    if (extensionVersionValue != null) {
      map['extensionVersion'] = extensionVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['params'] = params;
    final populatedPostinstallContentValue = populatedPostinstallContent;
    if (populatedPostinstallContentValue != null) {
      map['populatedPostinstallContent'] = populatedPostinstallContentValue;
    }
    final systemParamsValue = systemParams;
    if (systemParamsValue != null) {
      map['systemParams'] = systemParamsValue;
    }
    return map;
  }

  factory ExtensionsInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceConfig(
      allowedEventTypes: map['allowedEventTypes'] == null
          ? null
          : (map['allowedEventTypes'] as List).cast<String>(),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      eventarcChannel: map['eventarcChannel'] == null
          ? null
          : map['eventarcChannel'] as String,
      extensionRef: map['extensionRef'] as String,
      extensionVersion: map['extensionVersion'] == null
          ? null
          : map['extensionVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      params: (map['params'] as Map).cast<String, String>(),
      populatedPostinstallContent: map['populatedPostinstallContent'] == null
          ? null
          : map['populatedPostinstallContent'] as String,
      systemParams: map['systemParams'] == null
          ? null
          : (map['systemParams'] as Map).cast<String, String>(),
    );
  }
}
