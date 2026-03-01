/// Determines whether to use the Amazon ECS task role defined in a task definition when mounting the Amazon EFS file system. If it is turned on, transit encryption must be turned on in the ``EFSVolumeConfiguration``. If this parameter is omitted, the default value of ``DISABLED`` is used. For more information, see [Using Amazon EFS access points](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html#efs-volume-accesspoints) in the *Amazon Elastic Container Service Developer Guide*.
enum AuthorizationConfigIAM {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const AuthorizationConfigIAM(this.value);
  final String value;

  static AuthorizationConfigIAM fromValue(String value) {
    for (final item in AuthorizationConfigIAM.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationConfigIAM value: $value');
  }
}

