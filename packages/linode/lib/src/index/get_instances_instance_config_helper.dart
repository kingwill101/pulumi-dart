// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceConfigHelper {
  /// Populates the /dev directory early during boot without udev. Defaults to false.
  final bool devtmpfsAutomount;
  /// Controls the behavior of the Linode Config's Distribution Helper setting.
  final bool distro;
  /// Creates a modules dependency file for the Kernel you run.
  final bool modulesDep;
  /// Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
  final bool network;
  /// Disables updatedb cron job to avoid disk thrashing.
  final bool updatedbDisabled;

  /// Creates a new [GetInstancesInstanceConfigHelper].
  /// [devtmpfsAutomount] Populates the /dev directory early during boot without udev. Defaults to false.
  /// [distro] Controls the behavior of the Linode Config's Distribution Helper setting.
  /// [modulesDep] Creates a modules dependency file for the Kernel you run.
  /// [network] Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
  /// [updatedbDisabled] Disables updatedb cron job to avoid disk thrashing.
  GetInstancesInstanceConfigHelper({
    required this.devtmpfsAutomount,
    required this.distro,
    required this.modulesDep,
    required this.network,
    required this.updatedbDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devtmpfsAutomount': devtmpfsAutomount,
      'distro': distro,
      'modulesDep': modulesDep,
      'network': network,
      'updatedbDisabled': updatedbDisabled,
    };
  }

  factory GetInstancesInstanceConfigHelper.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigHelper(
      devtmpfsAutomount: map['devtmpfsAutomount'] as bool,
      distro: map['distro'] as bool,
      modulesDep: map['modulesDep'] as bool,
      network: map['network'] as bool,
      updatedbDisabled: map['updatedbDisabled'] as bool,
    );
  }
}

