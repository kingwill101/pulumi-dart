// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePostPayModuleSwitchObj {
  /// Agentless Detection Module. Valid values:
  final pulumi.Input<int>? agentless;

  /// Anti-Ransomware Module. Valid values:
  final pulumi.Input<int>? antiRansomware;

  /// Basic service module. Valid values:
  final pulumi.Input<int>? basicService;

  /// Cloud Security Configuration Check Module. Valid values:
  final pulumi.Input<int>? cspm;

  /// Threat Analysis and Response Module. Valid values:
  final pulumi.Input<int>? ctdr;

  /// Log Management Module. Valid values:
  final pulumi.Input<int>? ctdrStorage;

  /// Host and Container Security Module. Valid values:
  final pulumi.Input<int>? postHost;

  /// Application Protection Module. Valid values:
  final pulumi.Input<int>? rasp;

  /// Malicious File Detection SDK Module. Valid values:
  final pulumi.Input<int>? sdk;

  /// Serverless Security Module. Valid values:
  final pulumi.Input<int>? serverless;

  /// Vulnerability Repair Module. Valid values:
  final pulumi.Input<int>? vul;

  /// File Tamper Protection Module. Valid values:
  final pulumi.Input<int>? webLock;

  /// Creates a new [InstancePostPayModuleSwitchObj].
  /// [agentless] Agentless Detection Module. Valid values:
  /// [antiRansomware] Anti-Ransomware Module. Valid values:
  /// [basicService] Basic service module. Valid values:
  /// [cspm] Cloud Security Configuration Check Module. Valid values:
  /// [ctdr] Threat Analysis and Response Module. Valid values:
  /// [ctdrStorage] Log Management Module. Valid values:
  /// [postHost] Host and Container Security Module. Valid values:
  /// [rasp] Application Protection Module. Valid values:
  /// [sdk] Malicious File Detection SDK Module. Valid values:
  /// [serverless] Serverless Security Module. Valid values:
  /// [vul] Vulnerability Repair Module. Valid values:
  /// [webLock] File Tamper Protection Module. Valid values:
  InstancePostPayModuleSwitchObj({
    this.agentless,
    this.antiRansomware,
    this.basicService,
    this.cspm,
    this.ctdr,
    this.ctdrStorage,
    this.postHost,
    this.rasp,
    this.sdk,
    this.serverless,
    this.vul,
    this.webLock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentless': ?agentless,
      'antiRansomware': ?antiRansomware,
      'basicService': ?basicService,
      'cspm': ?cspm,
      'ctdr': ?ctdr,
      'ctdrStorage': ?ctdrStorage,
      'postHost': ?postHost,
      'rasp': ?rasp,
      'sdk': ?sdk,
      'serverless': ?serverless,
      'vul': ?vul,
      'webLock': ?webLock,
    };
  }

  factory InstancePostPayModuleSwitchObj.fromMap(Map<String, dynamic> map) {
    return InstancePostPayModuleSwitchObj(
      agentless: (() {
        final guardedValue = map['agentless'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      antiRansomware: (() {
        final guardedValue = map['antiRansomware'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      basicService: (() {
        final guardedValue = map['basicService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cspm: (() {
        final guardedValue = map['cspm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ctdr: (() {
        final guardedValue = map['ctdr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ctdrStorage: (() {
        final guardedValue = map['ctdrStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      postHost: (() {
        final guardedValue = map['postHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      rasp: (() {
        final guardedValue = map['rasp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sdk: (() {
        final guardedValue = map['sdk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverless: (() {
        final guardedValue = map['serverless'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vul: (() {
        final guardedValue = map['vul'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      webLock: (() {
        final guardedValue = map['webLock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
