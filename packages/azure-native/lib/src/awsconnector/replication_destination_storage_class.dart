/// The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica.  For valid values, see the ``StorageClass`` element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the *Amazon S3 API Reference*.
enum ReplicationDestinationStorageClass {
  dEEPARCHIVE("DEEP_ARCHIVE"),
  gLACIER("GLACIER"),
  gLACIERIR("GLACIER_IR"),
  iNTELLIGENTTIERING("INTELLIGENT_TIERING"),
  oNEZONEIA("ONEZONE_IA"),
  rEDUCEDREDUNDANCY("REDUCED_REDUNDANCY"),
  sTANDARD("STANDARD"),
  sTANDARDIA("STANDARD_IA");

  const ReplicationDestinationStorageClass(this.value);
  final String value;

  static ReplicationDestinationStorageClass fromValue(String value) {
    for (final item in ReplicationDestinationStorageClass.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationDestinationStorageClass value: $value');
  }
}

