// ignore_for_file: unused_element, unnecessary_cast


class InstancePostPayModuleSwitchObj {
  /// Agentless Detection Module. Valid values:
  final int? agentless;
  /// Anti-Ransomware Module. Valid values:
  final int? antiRansomware;
  /// Basic service module. Valid values:
  final int? basicService;
  /// Cloud Security Configuration Check Module. Valid values:
  final int? cspm;
  /// Threat Analysis and Response Module. Valid values:
  final int? ctdr;
  /// Log Management Module. Valid values:
  final int? ctdrStorage;
  /// Host and Container Security Module. Valid values:
  final int? postHost;
  /// Application Protection Module. Valid values:
  final int? rasp;
  /// Malicious File Detection SDK Module. Valid values:
  final int? sdk;
  /// Serverless Security Module. Valid values:
  final int? serverless;
  /// Vulnerability Repair Module. Valid values:
  final int? vul;
  /// File Tamper Protection Module. Valid values:
  final int? webLock;

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
      agentless: map['agentless'] == null ? null : map['agentless'] as int,
      antiRansomware: map['antiRansomware'] == null ? null : map['antiRansomware'] as int,
      basicService: map['basicService'] == null ? null : map['basicService'] as int,
      cspm: map['cspm'] == null ? null : map['cspm'] as int,
      ctdr: map['ctdr'] == null ? null : map['ctdr'] as int,
      ctdrStorage: map['ctdrStorage'] == null ? null : map['ctdrStorage'] as int,
      postHost: map['postHost'] == null ? null : map['postHost'] as int,
      rasp: map['rasp'] == null ? null : map['rasp'] as int,
      sdk: map['sdk'] == null ? null : map['sdk'] as int,
      serverless: map['serverless'] == null ? null : map['serverless'] as int,
      vul: map['vul'] == null ? null : map['vul'] as int,
      webLock: map['webLock'] == null ? null : map['webLock'] as int,
    );
  }
}

