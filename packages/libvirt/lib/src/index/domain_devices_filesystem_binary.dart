// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_filesystem_binary_cache.dart';
import 'domain_devices_filesystem_binary_lock.dart';
import 'domain_devices_filesystem_binary_open_files.dart';
import 'domain_devices_filesystem_binary_sandbox.dart';
import 'domain_devices_filesystem_binary_thread_pool.dart';

class DomainDevicesFilesystemBinary {
  /// Manages cache settings for the binary filesystem device.
  final DomainDevicesFilesystemBinaryCache? cache;
  /// Specifies the locking behavior for the binary filesystem device.
  final DomainDevicesFilesystemBinaryLock? lock;
  /// Sets the maximum number of open files for the binary filesystem.
  final DomainDevicesFilesystemBinaryOpenFiles? openFiles;
  /// Specifies the file path for the binary filesystem.
  final String? path;
  /// Controls whether the binary filesystem operates in sandbox mode.
  final DomainDevicesFilesystemBinarySandbox? sandbox;
  /// Configures the usage of a thread pool for handling operations in the binary filesystem.
  final DomainDevicesFilesystemBinaryThreadPool? threadPool;
  /// Configures extended attributes for the binary filesystem.
  final String? xattr;

  /// Creates a new [DomainDevicesFilesystemBinary].
  /// [cache] Manages cache settings for the binary filesystem device.
  /// [lock] Specifies the locking behavior for the binary filesystem device.
  /// [openFiles] Sets the maximum number of open files for the binary filesystem.
  /// [path] Specifies the file path for the binary filesystem.
  /// [sandbox] Controls whether the binary filesystem operates in sandbox mode.
  /// [threadPool] Configures the usage of a thread pool for handling operations in the binary filesystem.
  /// [xattr] Configures extended attributes for the binary filesystem.
  DomainDevicesFilesystemBinary({
    this.cache,
    this.lock,
    this.openFiles,
    this.path,
    this.sandbox,
    this.threadPool,
    this.xattr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache == null ? null : cache!.toMap(),
      'lock': ?lock == null ? null : lock!.toMap(),
      'openFiles': ?openFiles == null ? null : openFiles!.toMap(),
      'path': ?path,
      'sandbox': ?sandbox == null ? null : sandbox!.toMap(),
      'threadPool': ?threadPool == null ? null : threadPool!.toMap(),
      'xattr': ?xattr,
    };
  }

  factory DomainDevicesFilesystemBinary.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinary(
      cache: map['cache'] == null ? null : DomainDevicesFilesystemBinaryCache.fromMap((map['cache'] as Map).cast<String, dynamic>()),
      lock: map['lock'] == null ? null : DomainDevicesFilesystemBinaryLock.fromMap((map['lock'] as Map).cast<String, dynamic>()),
      openFiles: map['openFiles'] == null ? null : DomainDevicesFilesystemBinaryOpenFiles.fromMap((map['openFiles'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      sandbox: map['sandbox'] == null ? null : DomainDevicesFilesystemBinarySandbox.fromMap((map['sandbox'] as Map).cast<String, dynamic>()),
      threadPool: map['threadPool'] == null ? null : DomainDevicesFilesystemBinaryThreadPool.fromMap((map['threadPool'] as Map).cast<String, dynamic>()),
      xattr: map['xattr'] == null ? null : map['xattr'] as String,
    );
  }
}

